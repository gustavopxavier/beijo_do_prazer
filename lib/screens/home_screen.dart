import 'package:flutter/material.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// https://github.com/flutter/website/blob/master/examples/layout/lakes/step6/lib/main.dart
void main() {
  // debugPaintSizeEnabled = true;
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Beijo do Prazer',
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.surface.withOpacity(.60)),
                  ),
                ),
                Text(
                  'O seu Sexy Shopping Virtual',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(
        bottom: 32.0,
        left: 32.0,
        right: 32.0,
        top: 0.0,
      ),
      child: Text(
        '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.''',
        softWrap: true,
        style: TextStyle(
          fontSize: 18,
          color: colorScheme.surface,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Beijo do Prazer',
      home: Scaffold(
        backgroundColor: colorScheme.primary,
        // appBar: AppBar(
        //   title: Text('Flutter layout demo'),
        // ),
        body: ListView(
          children: [
            Image.network(
              'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card2.png?alt=media&token=58b91f5a-683b-4f4f-80fb-b86c5987bd75',
              width: 600,
              height: 240,
              fit: BoxFit.fill,
            ),
            titleSection,
            // buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;

//     return MaterialApp(
//       title: 'Bem Vindos a Beijo do Prazer',
//       home: Scaffold(
//         backgroundColor: colorScheme.primary,
//         // appBar: AppBar(
//         //   title: Text('Bem Vindos a Beijo do Prazer'),
//         // ),
//         body: Center(
//           child: Text('Beijo do Prazer'),
//         ),
//       ),
//     );

//     // return Scaffold(
//     //   backgroundColor: colorScheme.primary,
//     //   body: Center(
//     //     child: Text('Início Home Screen'),
//     //   ),
//     // );
//   }
// }
