import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _rememberMe = false; // Deklarasi dan inisialisasi variabel _rememberMe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F2E8), // Warna latar belakang: #D5F2E8
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Sign up for the Chunky app',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            const TextFieldContainer(
              hintText: 'Enter your name',
            ),
            const SizedBox(height: 30),
            const TextFieldContainer(
              hintText: 'Last name',
            ),
            const SizedBox(height: 30),
            const TextFieldContainer(
              hintText: 'Email/phone number',
            ),
            const SizedBox(height: 30),
            const TextFieldContainer(
              hintText: 'Password',
            ),
            const SizedBox(height: 30),
            const TextFieldContainer(
              hintText: 'Confirm password',
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Checkbox(
                    value: _rememberMe, // Gunakan variabel _rememberMe
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false; // Toggle nilai _rememberMe
                      });
                    },
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'By clicking on ‘sign up’, you’re agreeing to the Chunky app ',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 2, // Maksimum 2 baris
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle aksi syarat dan ketentuan di sini
                              },
                              child: const Text(
                                'Terms of Service',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF2D4990), // Warna latar belakang: #2D4990
                                  backgroundColor: Color(0xFFD5F2E8),
                                ),
                              ),
                            ),
                            const Text(
                              ' and ',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Handle aksi kebijakan privasi di sini
                              },
                              child: const Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF2D4990), // Warna latar belakang: #2D4990
                                  backgroundColor: Color(0xFFD5F2E8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman successful
                Navigator.pushNamed(context, '/successful');
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFF2D4990), // Warna latar belakang: #2D4990
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Atur warna teks menjadi putih
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String hintText;

  const TextFieldContainer({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}