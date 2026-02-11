import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
    this.usernameController,
    this.passwordController,
    this.onLogin,
    this.onForgotPassword,
    this.onCreateAccount,
  });

  final TextEditingController? usernameController;
  final TextEditingController? passwordController;
  final VoidCallback? onLogin;
  final VoidCallback? onForgotPassword;
  final VoidCallback? onCreateAccount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        const Text(
          'Meta',
          style: TextStyle(
            color: Color(0xFFB7C1CC),
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 28),
        _LoginTextField(
          controller: usernameController,
          hintText: 'Username, email or mobile number',
          obscureText: false,
          textInputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 14),
        _LoginTextField(
          controller: passwordController,
          hintText: 'Password',
          obscureText: true,
          textInputType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 22),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: onLogin,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0A7CFF),
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              elevation: 0,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            child: const Text('Log in'),
          ),
        ),
        const SizedBox(height: 18),
        TextButton(
          onPressed: onForgotPassword,
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          child: const Text(
            'Forgot password?',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: OutlinedButton(
            onPressed: onCreateAccount,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF4AA3FF),
              side: const BorderSide(color: Color(0xFF4AA3FF), width: 1.4),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Create new account',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginTextField extends StatelessWidget {
  const _LoginTextField({
    required this.hintText,
    required this.obscureText,
    required this.textInputType,
    this.controller,
  });

  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF7C8A99)),
        filled: true,
        fillColor: const Color(0xFF0F1E2A),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFF253443), width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFF4AA3FF), width: 1.2),
        ),
      ),
    );
  }
}
