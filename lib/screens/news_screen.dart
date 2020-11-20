import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorScheme.primary,
        body: ListView(
          children: [
            SizedBox(
              child: AspectRatio(
                aspectRatio: 0.9,
                child: SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: Carousel(
                    boxFit: BoxFit.contain,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    borderRadius: true,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.pinkAccent,
                    dotSize: 6.0,
                    // dotSpacing: 15.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card1.png?alt=media&token=0e56a9c3-0f88-4c40-8223-838ba5d7622d'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card2.png?alt=media&token=58b91f5a-683b-4f4f-80fb-b86c5987bd75'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card3.png?alt=media&token=1332e4f6-c2a6-4184-8a4c-b11e141bc650'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: AspectRatio(
                aspectRatio: 0.9,
                child: SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: Carousel(
                    boxFit: BoxFit.contain,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    borderRadius: true,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.pinkAccent,
                    dotSize: 6.0,
                    // dotSpacing: 15.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card1.png?alt=media&token=0e56a9c3-0f88-4c40-8223-838ba5d7622d'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card2.png?alt=media&token=58b91f5a-683b-4f4f-80fb-b86c5987bd75'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card3.png?alt=media&token=1332e4f6-c2a6-4184-8a4c-b11e141bc650'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: AspectRatio(
                aspectRatio: 0.9,
                child: SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: Carousel(
                    boxFit: BoxFit.contain,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    borderRadius: true,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.pinkAccent,
                    dotSize: 6.0,
                    // dotSpacing: 15.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card1.png?alt=media&token=0e56a9c3-0f88-4c40-8223-838ba5d7622d'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card2.png?alt=media&token=58b91f5a-683b-4f4f-80fb-b86c5987bd75'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card3.png?alt=media&token=1332e4f6-c2a6-4184-8a4c-b11e141bc650'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: AspectRatio(
                aspectRatio: 0.9,
                child: SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: Carousel(
                    boxFit: BoxFit.contain,
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    borderRadius: true,
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.pinkAccent,
                    dotSize: 6.0,
                    // dotSpacing: 15.0,
                    dotIncreasedColor: Color(0xFFFF335C),
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card1.png?alt=media&token=0e56a9c3-0f88-4c40-8223-838ba5d7622d'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card2.png?alt=media&token=58b91f5a-683b-4f4f-80fb-b86c5987bd75'),
                      NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/lojaflutterudemy-d6a31.appspot.com/o/card3.png?alt=media&token=1332e4f6-c2a6-4184-8a4c-b11e141bc650'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
