import 'package:flutter/material.dart';

class Successful2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Menghilangkan AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/success.png', // 
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Login was successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman Start
                Navigator.pushNamed(context, '/start');
              },
              child: const Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990), // Warna teks: #2D4990
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}