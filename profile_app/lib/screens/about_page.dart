import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  final List<Map<String, String>> _skillAndHobbies = const [
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
      'subtitle': 'Aktif berlatih dan berorganisasi di unit kegiatan mahasiswa kampus',
    },
  ];

  final List<Map<String, String>> _educationHistory = const [
    {
      'institution' : 'Institut Teknologi & Bisnis Bina Sarana Global',
      'period' : '2024 - Sekarang',
      'detail' : 'S1 Teknik Informatika'
    },
    {
      'institution' : 'MA AT-TAQWA YASTU',
      'period' : '2020 - 2023',
      'detail' : 'Pendidikan Menengah Atas'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

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
                leading: Icon(Icons.star, color: colorScheme.primary),
                title: Text(
                  item['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item['subtitle']!),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Riwayat Pendidikan',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ..._educationHistory.map(
            (edu) => Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                leading: Icon(Icons.school, color: colorScheme.primary),
                title: Text(
                  edu['institution']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text('${edu['detail']} (${edu['period']})'),
              ),
            )
          )
        ],
      ),
    );
  }
}