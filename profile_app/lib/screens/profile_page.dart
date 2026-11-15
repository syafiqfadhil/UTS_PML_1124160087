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
