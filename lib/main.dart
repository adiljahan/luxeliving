import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luxe_living/Feature/Auth/screens/Bottampage.dart';
import 'package:luxe_living/Feature/Auth/screens/loginpage.dart';

import 'Feature/Auth/screens/CartPage.dart';
import 'Feature/Auth/screens/Payment.dart';
import 'Feature/Auth/screens/Product_Details.dart';
import 'Feature/Auth/screens/Profile_page.dart';
import 'Feature/Auth/screens/favorites.dart';
import 'Feature/Auth/screens/main_meanu.dart';
import 'Feature/Auth/screens/openpage.dart';
import 'Feature/Auth/screens/payment_succesfully.dart';
import 'Feature/Auth/screens/paymentone.dart';
import 'Feature/Auth/screens/shofa1.dart';
import 'Feature/Auth/screens/signup.dart';
import 'Splash/splash_Screen.dart';
import 'firebase_options.dart';
var w;
var h;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home:SplashScreen (


     ),
      debugShowCheckedModeBanner: false,
    );
  }
}

