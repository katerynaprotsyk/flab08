import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import 'reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://cdn.iconscout.com/icon/free/png-256/free-flutter-logo-icon-svg-download-png-2944876.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            Center (
              child: Text("Sign in", style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 30),

            TextField(
              decoration: const InputDecoration(
                labelText: 'Login',
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return const AlertDialog(
                        title: Text('Message'),
                        content: Text("Need to implement"),
                      );
                    },
                  );
                },
                child: const Text("Login"),
              ),
            ),


            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child:
                OutlinedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    )
                  },
                  child: const Text("Sign up"),
                ),
                ),
                Expanded(child:
                TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    )
                  },
                  child: Text("Forgot your password?"),
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