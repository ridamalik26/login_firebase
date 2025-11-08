import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.08, vertical: h * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: w * 0.08,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: h * 0.04),

            // Username field
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter your username",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.person, color: Colors.white),
                filled: true,
                fillColor: Colors.grey.shade900,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: h * 0.025),

            // Email field
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.email, color: Colors.white),
                filled: true,
                fillColor: Colors.grey.shade900,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: h * 0.025),

            // Password field
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.lock, color: Colors.white),
                filled: true,
                fillColor: Colors.grey.shade900,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: h * 0.05),

            // Sign Up button
            SizedBox(
              width: double.infinity,
              height: h * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  // TODO: Add sign-up logic
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: w * 0.045, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: h * 0.03),

            // Already have an account? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.06),

            // Sign up using following
            const Center(
              child: Text(
                "Sign up using following",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: h * 0.02),

            // Social icons row (placeholders)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialCircle("assets/images/fb.jpeg"),
                SizedBox(width: w * 0.05),
                socialCircle("assets/images/g.jpg"),
                SizedBox(width: w * 0.05),
                socialCircle("assets/images/gmail.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget socialCircle(String imgPath) {
    return Container(
      width: 45,
      height: 45,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white10,
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(0.1),
        child: Image.asset(imgPath,fit: BoxFit.contain ),
        )
      )
    );
  }
}
