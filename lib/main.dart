import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unib/authMethods.dart';
import 'package:unib/connectPage.dart';
import 'package:unib/page.dart';
import 'package:unib/textfield.dart';

import 'identifyPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBw-7EeEj6sTz-yWTmnJGNp0um1bwPdKWk",
            projectId: "projet-unib",
            storageBucket: "projet-unib.appspot.com",
            messagingSenderId: "301305619011",
            appId: "1:301305619011:web:057358961a63646c1aeaf6"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: IdentifyPage(),
    );
  }
}
