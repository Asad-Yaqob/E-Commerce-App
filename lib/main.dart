import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:capjewel/ui/screens/auth/login_singup.dart';
import 'package:capjewel/ui/comman/widgets/loading.dart';
import 'package:capjewel/firebase_options.dart';
import 'package:capjewel/landing.dart';
import 'package:capjewel/utils/themes/main.dart';

Future<void> main() async {
  // Ensure Widgets Binding is initialized
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Preserve splash screen until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase and remove splash screen
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((_) => FlutterNativeSplash.remove());

  // Run the app
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CapJewel',
      theme: AppMainTheme.theme,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CLoading();
          }

           if (snapshot.hasData) {
            return const LandingScreen();
          }

          return const LoginSingupScreen();
        },),
      debugShowCheckedModeBanner: false,
    );
  }
}
