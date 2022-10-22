import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motiv/sign_up_login_in.dart';

import 'auth/auth_widget.dart';
import 'firebase_options.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      title: 'Motiv',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 67, 210, 239)),
      ),
      //AuthWidget to build sign in page/non signed in page - if user is signed in, build home page else build sign UP page
      home: AuthWidget(
        signedInBuilder: (context) => const Home(),
        nonSignedInBuilder: (context) => const SignUpLogIn(),
      ),
    );
  }
}
