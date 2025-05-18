import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang JeKa'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'JeKa - Jejaring Komunitas',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'JeKa adalah aplikasi jejaring komunitas berbasis Android yang membantu individu dan penggerak komunitas '
              'untuk terhubung, berbagi pengalaman, berkolaborasi, dan meningkatkan dampak positif bersama. '
              'Dengan integrasi kecerdasan buatan, JeKa membantu pengguna menemukan komunitas yang sesuai dengan minat dan tujuannya.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              '🎯 Tujuan Pengembangan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              '- Membantu pengguna menemukan komunitas sesuai minat dan tujuan\n'
              '- Meningkatkan partisipasi dan kesadaran dalam komunitas\n'
              '- Memfasilitasi kolaborasi dan interaksi efektif\n'
              '- Meningkatkan dampak sosial positif dalam masyarakat',
            ),
            SizedBox(height: 16),
            Text(
              '⚙️ Teknologi & Pengembangan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              '- Dikembangkan dengan Flutter dan Firebase\n'
              '- Menggunakan layanan AI generatif dari Google (Gemini)\n'
              '- Arsitektur berbasis Presentation & Data Layer\n'
              '- Metodologi: Waterfall (Requirements, Design, Development, Testing, Deployment, Maintenance)',
            ),
            SizedBox(height: 16),
            Text(
              '📱 Fitur Utama',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              '- Pencarian dan bergabung komunitas\n'
              '- Membuat dan mengelola komunitas\n'
              '- Posting cerita dan pengalaman\n'
              '- Acara komunitas dan kolaborasi antar komunitas\n'
              '- Chat & notifikasi komunitas\n'
              '- Fitur AI untuk bantu menulis konten komunitas',
            ),
            SizedBox(height: 16),
            Text(
              '🧩 Batasan Aplikasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              '- Hanya berjalan di Android (minimal versi 7.0)\n'
              '- Bahasa yang didukung: Indonesia & Inggris\n'
              '- Aturan komunitas hanya ditentukan oleh pemilik komunitas\n'
              '- Akses komunitas tidak dibatasi wilayah',
            ),
            SizedBox(height: 24),
            Text(
              '💡 JeKa dibangun dengan semangat untuk meningkatkan kualitas hidup melalui kekuatan komunitas.\n'
              'Bersama-sama, kita bisa menciptakan masa depan yang lebih baik.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
