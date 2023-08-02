import 'package:flutter/material.dart';
import 'package:untitled/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Task',
      theme: ThemeData(
        primaryColor: const Color(0xFFF7F9FE),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),
          bodyMedium: const TextStyle(fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF598BED)
          ),
          displayMedium: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6D747A),
              ),
          displayLarge: const TextStyle(
              color: Colors.black,
              fontFamily: 'Lora',
              fontWeight: FontWeight.w500,
              fontSize: 18
          ),
        ),

      ),
      home: const MyHomePage(),
    );
  }
}


