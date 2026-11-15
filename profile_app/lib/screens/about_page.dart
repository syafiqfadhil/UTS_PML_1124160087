import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  final List> _skillAndHobbies = const [
    {
      'title': 'Mobile App Development (Flutter & Dart)',
      'subtitle': 'Membangun antarmuka responsif, Form validation, dan manajemen state',
    },
    {
      'title': 'Backend & Database (Supabase & Java REST API)',
      'subtitle': 'Perancangan database relasional dan integrasi API',
    },
    {
      'title': 'UI/UX Design (Figma)',
      'subtitle': 'Membuat wireframe dan prototipe interaktif aplikasi mobile',
    },
    {
      'title': 'Futsal',
      'subtitle': 'Aktif berlatih dan berorganisasi di uni kegiatan mahasiswa kampus',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final ColorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Keahlian & Hobi',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ..._skillAndHobbies.map(
            (item) => Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                leading: Icon(Icons.star, color: ColorScheme.primary),
                title: Text(
                  item['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item['subtitle']!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}