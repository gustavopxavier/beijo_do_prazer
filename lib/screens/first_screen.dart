import 'package:flutter/material.dart';
import 'package:lojavirtualudemy/screens/contact_screen.dart';
import 'package:lojavirtualudemy/screens/home_screen.dart';
import 'package:lojavirtualudemy/screens/list_test.dart';
import 'package:lojavirtualudemy/screens/promotion_screen.dart';

// void main() => runApp(MyApp());

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildShrineTheme(),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [
    // Center(child: Text('Início', style: TextStyle(fontSize: 30))),
    // TestGridview(),
    // ListAllProducts(),
    HomeScreen(),
    ListTest(),
    // NewsScreen(),
    PromotionScreen(),
    ContactScreen(),
  ];

  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        // backgroundColor: Colors.blueGrey,
        backgroundColor: colorScheme.primary,
        elevation: 0.0,
        selectedItemColor: colorScheme.surface,
        unselectedItemColor: colorScheme.surface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Produtos',
            icon: Icon(Icons.shopping_basket),
          ),
          BottomNavigationBarItem(
            label: 'Promoções',
            icon: Icon(Icons.fiber_new_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Contatos',
            icon: Icon(Icons.contact_page),
          ),
        ],
      ),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePinkPrimary900,
  primaryVariant: shrinePinkPrimaryDark900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrinePinkPrimaryLight900,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);
const Color shrinePink900 = Color(0xFF880E4F);
const Color shrinePinkPrimary900 = Color(0xFF880E4F);
const Color shrinePinkPrimaryLight900 = Color(0xFFBC477B);
const Color shrinePinkPrimaryDark900 = Color(0xFF560027);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
