import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Profile Fadhil Hidayattulloh',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fitur Masih Dalam Perbaikan'))
              );
            }, 
            icon: Icon(Icons.person_2)
            )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  const CircleAvatar(
                    radius: 50,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person_2, size: 50),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Fadhil Hidayattulloh',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),

                  Text(
                    'NIM: 1124160087',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),

                  Text(
                    'Teknik Informatika',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 24,),

                  Padding(
                    padding: EdgeInsets.all(16),

                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: Text('Informasi Pribadi'),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.email, 
                            label: 'Email', 
                            value: 'fadilvtr23@gmail.com'
                            ),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.phone, 
                            label: 'Nomor Handphone', 
                            value: '0856323293131'
                            ),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.school, 
                            label: 'Kelas', 
                            value: 'TI 24 SE-2'
                            ),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.code,
                            label: 'Akun Github',
                            value: 'syafiqfadhil'
                            ),
                        ),

                        const SizedBox(height: 16),

                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: Text('Hobi dan Keahlian'),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.sports_soccer, 
                            label: 'Hobi', 
                            value: 'Bermain Futsal'
                            ),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.computer, 
                            label: 'Keahlian', 
                            value: 'Flutter & Dart'
                            ),
                        ),

                        const Card(
                          child: InfoTile(
                            icon: Icons.timeline, 
                            label: 'Keahlian', 
                            value: 'Analisis Data'
                            ),
                        ),

                      ],
                    ),
                    ),
                ],
              ),
            ),
          ), 
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    });

    final IconData icon;
    final String label;
    final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
