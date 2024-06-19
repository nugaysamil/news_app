import 'package:flutter/material.dart';
import 'package:news_app/feature/views/login/login_screen.dart';
import 'package:news_app/product/init/application_init.dart';

Future<void> main() async {
  await ApplicationInitialize.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
