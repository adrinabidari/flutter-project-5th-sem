import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tech/bottomnav.dart';
import 'package:tech/login.dart';
import 'package:tech/navbar.dart';
import 'package:tech/profile.dart';
import 'package:tech/register.dart';

import 'firebase_options.dart';

void main() async
{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // for statful widgets stful, stless for stateless
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const LoginPage(),
          "/register": (context) => const RegisterPage(),
          "/home": (context) => const NavBar(),
          "/profile": (context) => const Profile()
        });
  }
}
