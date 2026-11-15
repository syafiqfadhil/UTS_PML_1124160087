import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';

class ProfilePage extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const ProfilePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
    });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile _profile = Profile(
    nama: 'Fadhil Hidayattulloh', 
    nim: '1124160087', 
    prodi: 'Teknik Informatika', 
    kelas: 'TI 24 SE 2', 
    email: 'fadhil@gmail.com', 
    hp: "085672339232", 
    github: 'github.com/syafiqfadhil', 
    bio: 'Mahasiswa Teknik Informatika tertarik pada pengembangan aplikasi mobile Flutter dan aktif berorganisasi',
    );

    Future<void> _navigateToEditProfile() async {
      final result = await Navigator.pushNamed(
        context, 
        '/edit-profile',
        arguments: _profile
        );

      if (result != null && result is Profile){
        setState(() {
          _profile = result;
        });

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(
          'Profile berhasil diperbaharui'
        )),
      );
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Mahasiswa'),
          centerTitle: true,
          actions: [
            Icon(widget.isDarkMode ? Icons.dark_mode : Icons.light_mode),
            Switch(
              value: widget.isDarkMode, 
              onChanged: widget.onThemeChanged,
              ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(_profile.nama), 
                accountEmail: Text('${_profile.nim} . ${_profile.kelas}'),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/fadhil.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile Saya'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit Profile'),
                onTap: () {
                  Navigator.pop(context);
                _navigateToEditProfile();
                },
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Tentang Saya'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/about');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text('Keluar', style: TextStyle(color: Colors.red)),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              )
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                ],
              ),
            ),
          )
          ),
      );
    }
}
