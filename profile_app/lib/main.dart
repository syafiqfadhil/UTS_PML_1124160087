import 'package:flutter/material.dart';
import 'package:profile_app/models/profile.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Fadhil Hidayattulloh',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1D4ED8),
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1D4ED8),
          brightness: Brightness.dark
        ) 
      ),
      themeMode: _themeMode,

      initialRoute: '/',

      routes: {
        '/':(context) => const LoginPage(),
        '/profile':(context) => ProfilePage(
          isDarkMode: _themeMode == ThemeMode.dark,
          onThemeChanged: _toggleTheme,

        ),
        '/edit-profile':(context) {
          final profile = ModalRoute.of(context)!.settings.arguments as Profile;
          return EditProfilePage(profile: profile);
        },
        '/about':(context) => const AboutPage(),
      },
    );
  }
}