import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommunityGuidelinesPage extends StatelessWidget {
  const CommunityGuidelinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Guidelines'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Community Guidelines',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Untuk menjaga lingkungan komunitas yang positif dan produktif, berikut adalah panduan yang harus diikuti oleh semua anggota komunitas:\n\n'
              '1. Hormati semua anggota komunitas dan jaga komunikasi yang sopan.\n'
              '2. Jangan menyebarkan konten yang menyinggung SARA, pornografi, kekerasan, atau hal ilegal.\n'
              '3. Gunakan bahasa yang santun dan konstruktif dalam setiap diskusi.\n'
              '4. Hindari spam, promosi berlebihan, atau perilaku yang mengganggu.\n'
              '5. Laporkan konten atau perilaku yang melanggar panduan kepada pengelola komunitas.\n'
              '6. Patuhi aturan khusus yang berlaku di setiap komunitas.\n'
              '7. Dukung anggota lain dan berkontribusi positif untuk perkembangan komunitas.\n\n'
              'Dengan mematuhi panduan ini, kita bersama-sama membangun komunitas yang aman, inklusif, dan bermanfaat bagi semua.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
