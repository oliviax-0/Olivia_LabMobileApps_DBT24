import 'package:flutter/material.dart';
import 'package:instagramapp/widgets/app_bottom_nav.dart';
import 'package:instagramapp/widgets/login_card.dart';
import 'package:instagramapp/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1823),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: LoginCard(
                  usernameController: _usernameController,
                  passwordController: _passwordController,
                  onLogin: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  onForgotPassword: () {},
                  onCreateAccount: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
