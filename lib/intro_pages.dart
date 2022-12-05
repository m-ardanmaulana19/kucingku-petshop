import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      //logo
      Padding(
        padding:
            const EdgeInsets.only(left: 70, right: 70, top: 100, bottom: 70),
        child: Image.asset('images/logo.png'),
      ),

      //Penuhi kebutuhan si Kucing setiap hari
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          "Penuhi kebutuhan si Kucing setiap hari",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSerif(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      const SizedBox(height: 24),

      //Anda Pesan Kami Antarkan
      Text(
        "Anda Pesan Kami Antarkan",
        style: TextStyle(color: Colors.grey[600]),
      ),

      const Spacer(),
      //get started button
      GestureDetector(
        onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(15),
          child: const Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),

      const Spacer(),
    ]));
  }
}
