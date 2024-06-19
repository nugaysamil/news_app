import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app/firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Project initialization
@immutable
final class ApplicationInitialize {
  const ApplicationInitialize._();
  
  static Future<void> init() async {

    await dotenv.load(fileName: ".env");

    
    WidgetsFlutterBinding.ensureInitialized();

    // Project Firebase initialization
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
