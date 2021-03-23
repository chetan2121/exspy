
import 'package:flutter/material.dart';

import 'router.dart';


void main(){
  runApp(exspy());
}

class exspy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

// class Landingpage extends StatelessWidget {
//   // Create the initialization Future outside of `build`:
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return Scaffold(
//             body: Center(
//               child:Text("Erorr:${snapshot.error}"),
//             ),
//           );
//         }
//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context,streamSnapshot){
//               if (streamSnapshot.hasError) {
//                 return Scaffold(
//                   body: Center(
//                     child: Text("Error: ${streamSnapshot.error}"),
//                   ),
//                 );
//               }
//               if(streamSnapshot.connectionState==ConnectionState.active){
//                 User user=streamSnapshot.data;
//                 if(user==null){
//                   return LoginPage();
//                 }else{
//                   return BottomBar();
//                 }
//               }
//               return  Scaffold(
//                 body: Center(
//                   child:CircularProgressIndicator(
//                     backgroundColor: Colors.red,
//                     valueColor:  AlwaysStoppedAnimation<Color>(Color(0xFFFf89fa5)),
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//         // Otherwise, show something whilst waiting for initialization to complete
//         return  Scaffold(
//           body: Center(
//             child:CircularProgressIndicator(
//               backgroundColor: Colors.red,
//               valueColor:  AlwaysStoppedAnimation<Color>(Color(0xFFFf89fa5)),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }



