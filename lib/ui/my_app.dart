// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:souls_anime/domain/controller/login_controller.dart';
// import 'package:souls_anime/ui/pages/home_page.dart';
// import 'package:souls_anime/ui/pages/login_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/firebase_central.dart';

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase demo - MisionTIC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("error ${snapshot.error}");
            return Wrong();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return FirebaseCentral();
          }

          return Loading();
        },
      )),
    );
  }
}

class Wrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Something went wrong")),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Loading")),
    );
  }
}







// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Souls Anime App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,

//       home: GetX<LoginController>(
//         builder: (controller) {
//           if (controller.logueado.value) {
//             return HomePage();
//           } else {
//             return LoginPage();
//           }
//         },
//       ),
//       // initialRoute: 'login',
//       // routes: {
//       //   'login': ( _ ) => LoginScreen(),
//       //   'home':  ( _ ) => HomeScreen(),
//       //   'register': ( _ ) => RegisterScreen(),

//       // },
//     );
//   }
// }
