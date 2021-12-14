import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:souls_anime/ui/pages/content_page.dart';
import 'package:souls_anime/ui/pages/login_page.dart';

class FirebaseCentral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ContentPage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
