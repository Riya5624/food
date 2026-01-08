import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Dark Gradient Overlay (Professional Effect)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          // Content
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.10),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Sign in to continue',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'FOOD',
                    style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Sign in buttons
                  SignInButton(
                    Buttons.Google,
                    text: "Continue with Google",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  SignInButton(
                    Buttons.Apple,
                    text: "Continue with Apple",
                    onPressed: () {},
                  ),

                  const SizedBox(height: 20),

                  // Terms text
                  Text(
                    'By signing in, you agree to our',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  Text(
                    'Terms & Privacy Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
