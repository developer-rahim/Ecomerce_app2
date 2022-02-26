import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_connect_check/Controller/loginController.dart';
import 'package:firebase_connect_check/HomePage/homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'HomePage/loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey:
          "AAAAUJtY2kQ:APA91bEZWC-YeISCCBkr6_3JUOEz_Ss9wE0Xl5Q_HcejE-uN7SPy1bZFHbZTdvmDLx8pCPuxe84ezPma6YEzDHymw2FkrRY3j7gRKqiart9WhDvyFqQHti5LxlLqRVKi9130MsC0IN_7",
      appId: "1:346203675204:android:f37f68d01401d112d4ba11",
      messagingSenderId: "346203675204",
      projectId: "fir-check-ce2c5",
    ),
  );
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ViewLogicModel())],
        child: MaterialApp(
          // theme: ThemeData.dark(),
          supportedLocales: [
            const Locale('en', 'US'), //English
            const Locale('bn', 'BD') // Bangla
          ],
          debugShowCheckedModeBanner: false,
          home: Bottomnav(),
        ));
  }
}
