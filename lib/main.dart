import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:my_project/view/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDfesUtkCvO8jIrxvTNYGpXZgnQP6lnmpM",
          appId: "1:225802149768:android:c68e9dcdfe1dc1b878243d",
          messagingSenderId: "",
          projectId: "project-firebase-8fbd3",
          storageBucket: "project-firebase-8fbd3.appspot.com"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
