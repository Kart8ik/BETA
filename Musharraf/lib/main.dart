import 'dart:io';

import 'package:beta/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?
      await Firebase.initializeApp(
        options: const FirebaseOptions(apiKey: "AIzaSyCmOYjvRwiaOav0PPig4Uwg98ScKpw1HQk",
            appId: "1:167778209272:android:0480f900476384e15c5a0d",
            messagingSenderId: "167778209272",
            projectId: "flutter-req-2345f",)
      )
      :await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
