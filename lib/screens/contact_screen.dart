import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// https://github.com/flutter/website/blob/master/examples/layout/lakes/step6/lib/main.dart
void main() {
  // debugPaintSizeEnabled = true;
  runApp(ContactScreen());
}

class ContactScreen extends StatelessWidget {
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
                    'Redes Sociais',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.surface.withOpacity(.60)),
                  ),
                ),
                Text(
                  'Entre em contato conosco abaixo!',
                  style: TextStyle(
                    fontSize: 14,
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     _buildButtonColumn(color, Icons.chat, 'Whatsapp'),
            //     _buildButtonColumn(color, Icons.email, 'Email'),
            //     _buildButtonColumn(color, Icons.language, 'Site'),
            //   ],
            // ),
            // SizedBox(
            //   child: Container(
            //     padding: const EdgeInsets.only(bottom: 50),
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     _buildButtonColumn(color, Icons.fact_check, 'Facebook'),
            //     _buildButtonColumn(
            //         color, Icons.phone_in_talk_rounded, 'Ligação'),
            //     _buildButtonColumn(color, Icons.phone_android, 'Instagram'),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    RaisedButton(
                      onPressed: _launchZAP(),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img1.pnghut.com/14/3/7/xArSPfqe0E/logo-internet-email-icon-design-whatsapp.jpg'),
                        radius: 50,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text(
                        'Whatsapp',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img1.pnghut.com/14/3/7/xArSPfqe0E/logo-internet-email-icon-design-whatsapp.jpg'),
                      radius: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    RaisedButton(
                      onPressed: _launchSITE,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/b/www-inform-tica-do-internet-e-cone-da-barra-busca-de-web-site-eps-148122440.jpg'),
                        radius: 50,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text(
                        'Site',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).padding.top),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img1.pnghut.com/14/3/7/xArSPfqe0E/logo-internet-email-icon-design-whatsapp.jpg'),
                      radius: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text(
                        'Facebook',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: _calling,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://1.bp.blogspot.com/-HQyOWoEKQpk/XZLRatZV8SI/AAAAAAAAsmc/LJhpkFEYQTEquQFVIznH6UQ5lg_niLrdgCLcBGAsYHQ/s1600/LIGA%2BCIRCULO1.fw.png'),
                        radius: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black45,
                        ),
                        child: Text(
                          'Ligação',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.icon-icons.com/icons2/1582/PNG/512/instagram_108043.png'),
                      radius: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text(
                        'Instagram',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(
        bottom: 32.0,
        left: 32.0,
        right: 32.0,
        top: 30.0,
      ),
      child: Text(
        'CLIQUE NOS ÍCONES PARA INTERAGIR',
        softWrap: true,
        style: TextStyle(
          fontSize: 12,
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
            buttonSection,
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

  _launchZAP() async {
    const url = 'https://api.whatsapp.com/send?1=pt_BR&phone=5584991961118';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _launchSITE() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _calling() async {
    const url = 'tel:+5584994470336';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }
}

// import 'package:flutter/material.dart';

// class ContactScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;

//     return Scaffold(
//       backgroundColor: colorScheme.primary,
//       body: Center(
//         child: Text('Contatos - Contact Screen'),
//       ),
//     );
//   }
// }
