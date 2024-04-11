import 'package:club_lok_test/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA4NzBdHXdj-LdsovLr4vtGJx5q1c7z6TU",
      appId: "1:18443673621:android:cfb53d37483be4d7fc6e1c",
      messagingSenderId: "18443673621",
      projectId: "club-lok-e9709",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'), home: const Wrapper());
  }
}
