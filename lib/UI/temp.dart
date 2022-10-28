import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'images/lib1.png',
  'images/lib2.png',
  'images/lib3.png',
  'images/lib4.png',
  'images/lib5.png',
  'images/lib6.png',
  'images/li.png',
  'images/acma4.jpg',
  'images/acma1.png',
  'images/acma2.png',
  'images/acma3.png',
  'images/acma5.jpg',
  'images/acma6.png',
];


final themeMode = ValueNotifier(2);

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => FullscreenSliderDemo(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}



final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();


class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                    width: MediaQuery.of(context).size.width,
                  )),
            ),)
                .toList(),
          );
        },
      ),
    );
  }
}
