import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RulesAndAgreementPage extends StatelessWidget {
  const RulesAndAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rules and Agreement'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Rules and Agreement',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Selamat datang di halaman Rules and Agreement JeKa.\n\n'
              'Berikut adalah aturan dan kesepakatan yang harus dipatuhi oleh pengguna komunitas:\n\n'
              '1. Hormati semua anggota komunitas dan jaga komunikasi yang sopan.\n'
              '2. Dilarang menyebarkan konten yang bersifat SARA, pornografi, atau hal ilegal.\n'
              '3. Gunakan fitur komunitas dengan tujuan positif dan konstruktif.\n'
              '4. Pemilik komunitas berhak mengatur dan menegakkan aturan komunitasnya.\n'
              '5. Jangan menyalahgunakan data pribadi anggota komunitas.\n\n'
              'Dengan menggunakan aplikasi ini, kamu menyetujui semua aturan di atas dan berkomitmen untuk menjaga suasana komunitas yang sehat dan produktif.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
