import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/screens/Question.dart';
import 'package:kbc_quiz_app/screens/home.dart';
import 'package:kbc_quiz_app/screens/login_screen.dart';
import 'package:kbc_quiz_app/screens/loser.dart';
import 'package:kbc_quiz_app/screens/quizintro.dart';
import 'package:kbc_quiz_app/screens/win.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KBC Quiz',
        theme: ThemeData(

          primarySwatch: Colors.purple,
        ),
       // home:const LoginScreen(),
        home:const LoserScreen(),
      ),
    );
  }
}

