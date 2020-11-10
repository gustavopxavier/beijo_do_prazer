import 'package:flutter/material.dart';
import 'package:lojavirtualudemy/screens/first_screen.dart';
// import 'package:lojavirtualudemy/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clothing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      // home: HomeScreen(),
    );
  }
}

// import 'package:expansion_card/expansion_card.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: MainApp());
//   }
// }

// class MainApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey,
//         body: Center(
//             child: ExpansionCard(
//           borderRadius: 20,
//           background: Image.network(
//             "https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/logoBeijoDoPrazerSemFundo.png?alt=media&token=b1585aff-cc0a-4ef1-8257-9cb245ba2a5c",
//             fit: BoxFit.cover,
//           ),
//           title: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Header",
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Sub",
//                   style: TextStyle(fontSize: 20, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 7),
//               child: Text("Content goes over here !",
//                   style: TextStyle(fontSize: 20, color: Colors.black)),
//             )
//           ],
//         )));
//   }
// }
