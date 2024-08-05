import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twitter/Pages/EnterOTP/enter_otp.dart';
import 'package:twitter/Pages/EnterPassword/enter_password.dart';
import 'package:twitter/Pages/ForgotPassword/forgot_password.dart';
import 'package:twitter/Pages/Login/login.dart';
import 'package:twitter/Pages/ResetPassord/reset_password.dart';
import 'package:twitter/Pages/SignUp/sign_up.dart';
import 'package:twitter/firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
