import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const Placeholder();
=======
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Frequently Asked Questions',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          FAQItem(
            question: 'Apa itu JeKa?',
            answer:
                'JeKa adalah aplikasi jejaring komunitas yang memudahkan pengguna untuk terhubung dan berkolaborasi dalam komunitas yang sesuai dengan minat mereka.',
          ),
          FAQItem(
            question: 'Bagaimana cara bergabung dengan komunitas?',
            answer:
                'Kamu dapat mencari komunitas di fitur pencarian, lalu klik tombol "Join" untuk bergabung ke komunitas tersebut.',
          ),
          FAQItem(
            question: 'Apakah JeKa gratis digunakan?',
            answer:
                'Ya, JeKa dapat digunakan secara gratis oleh semua pengguna dengan fitur dasar yang lengkap.',
          ),
          FAQItem(
            question: 'Bagaimana cara mengatur notifikasi?',
            answer:
                'Pengaturan notifikasi dapat dilakukan melalui menu Settings pada aplikasi.',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            answer,
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
>>>>>>> aditya
  }
}
