import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_assignment/firebase_options.dart';
import 'package:liveasy_assignment/screens/enter_otp_screen.dart';
import 'package:liveasy_assignment/screens/login_screen.dart';
import 'package:liveasy_assignment/screens/profile_selection_screen.dart';
import 'package:liveasy_assignment/screens/select_language_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liveasy Assignment',
      initialRoute: '/',
      routes: {
        '/': (context) => const LanguageSelectScreen(),
        '/login': (context) => const LoginScreen(),
        '/otp': (context) => const EnterOtpScreen(),
        '/profile': (context) => const Profile(),
      },
    ),
  );
}
