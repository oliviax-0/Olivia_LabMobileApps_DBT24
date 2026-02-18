import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/order_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Using Poppins globally
      ),
      home: const OrderDetailScreen(),
    );
  }
}