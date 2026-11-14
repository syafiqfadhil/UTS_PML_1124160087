import 'package:flutter/material.dart';
import 'package:screen/login_page.dart';
import 'package:screen/profil_page.dart';
import 'package:screen/edit_profil_page.dart';
import 'package:screen/about_page.dart';

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
        '/profile':(context) => const ProfilePage(
          isDarkMode: _themeMode == ThemeMode.dark,
          onThemeChanged: _toggleTheme,

        ),
        '/edit-profile':(context) => const EditProfilePage(),
        '/about':(context) => const AboutPage(),
      },
    );
  }
}