import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password',
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password action
                },
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Button border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'or sign in with',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Handle Google sign-in action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                 // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Button border radius
                ),
                side: BorderSide(color: Colors.grey), // Border color
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              icon: Icon(
                Icons.g_translate, // Google icon
                color: Colors.red, // Icon color
              ),
              label: Text('Google'),
            ),
            Spacer(), // Pushes the RichText to the bottom
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle sign-up action
                        // Example: Navigator.pushNamed(context, '/signup');
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16), // Space at the bottom
          ],
        ),
      ),
    );
  }
}
