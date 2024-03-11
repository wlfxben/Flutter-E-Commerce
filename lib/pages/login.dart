import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false; // Menyimpan nilai checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F2E8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100), // Menambahkan jarak di sini
            const Text(
              'Welcome Back !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30), // Menambahkan jarak di sini
            const Text(
              'Log In to your account',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.right, // Teks akan berada di sebelah kanan
            ),
            const SizedBox(height: 40),
            const TextFieldContainer(
              child: TextField(
                style: TextStyle(
                    color: Colors.black), // Mengatur warna teks menjadi hitam
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color:
                          Colors.grey), // Mengatur warna hint menjadi abu-abu
                ),
              ),
            ),
            const SizedBox(height: 40),
            const TextFieldContainer(
              child: TextField(
                style: TextStyle(
                    color: Colors.black), // Mengatur warna teks menjadi hitam
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color:
                          Colors.grey), // Mengatur warna hint menjadi abu-abu
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe, // Menetapkan nilai checkbox
                  onChanged: (value) {
                    setState(() {
                      _rememberMe =
                          value ?? false; // Memperbarui nilai checkbox
                    });
                  },
                ),
                const Text('Remember Me'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgotten_password');
                  },
                  child: const Text(
                    'Forgotten password?',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks menjadi biru
                      decoration: TextDecoration
                          .underline, // Berikan garis bawah pada teks
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman successful2 saat tombol login ditekan
                Navigator.pushNamed(context, '/successful2');
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFF2D4990),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text('OR'),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.asset('assets/image 1.png', width: 24, height: 24),
              label: const Text(
                'Log in with your Google account',
                style: TextStyle(
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
              style: OutlinedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.black, // Mengatur warna teks menjadi putih
                backgroundColor:
                    Colors.white, // Mengatur warna latar belakang menjadi putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                side: const BorderSide(color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF2D4990),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white, // Mengatur warna latar belakang menjadi putih
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}