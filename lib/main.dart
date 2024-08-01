// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:lonin_page/login_page.dart';
import 'package:lonin_page/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        //scaffoldBackgroundColor: AppColors.background,
      ),
      
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "LogIn App",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const LoginPage(),
        
        
        drawer: const Drawer(),
      ),
      
    );
  }
}
