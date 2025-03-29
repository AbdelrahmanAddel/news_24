import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/core/routing/app_router.dart';
import 'package:news_24/firebase/firebase_options.dart';
import 'package:news_24/news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getitSetup();
  await _firebaseInitlized();
  runApp(NewsApp(appRouter: AppRouter()));
}

Future<void> _firebaseInitlized() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } on Exception catch (e) {
    debugPrint('Firebase Initalize Error = $e ');
  }
}
