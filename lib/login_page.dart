import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitpay/auth_widgets.dart';
import 'package:habitpay/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            EmailInput(),
            const SizedBox(height: 16),
            PasswordInput(),
            const SizedBox(height: 24),
            _LoginButton(),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to register page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}

// class _EmailInput extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: const InputDecoration(
//         labelText: 'Email',
//         prefixIcon: Icon(Icons.email),
//         border: OutlineInputBorder(),
//       ),
//       keyboardType: TextInputType.emailAddress,
//       onChanged: (email) {
//         // Update email in your state management
//       },
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your email';
//         }
//         if (!value.contains('@')) {
//           return 'Please enter a valid email';
//         }
//         return null;
//       },
//     );
//   }
// }

// class _PasswordInput extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: const InputDecoration(
//         labelText: 'Password',
//         prefixIcon: Icon(Icons.lock),
//         border: OutlineInputBorder(),
//       ),
//       obscureText: true,
//       onChanged: (password) {
//         // Update password in your state management
//       },
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your password';
//         }
//         if (value.length < 6) {
//           return 'Password must be at least 6 characters';
//         }
//         return null;
//       },
//     );
//   }
// }

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          // Handle login logic
        },
        child: const Text('LOGIN'),
      ),
    );
  }
}