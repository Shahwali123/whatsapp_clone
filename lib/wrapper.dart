// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:servike/ui/screens/generic/auth/login/login.dart';
// import 'package:servike/ui/screens/generic/navigation/main_nav.dart';

// class Wrapper extends StatelessWidget {
//   const Wrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return const MainNavigation();
//         }
//         return const LoginScreen();
//       },
//     );
//   }
// }
