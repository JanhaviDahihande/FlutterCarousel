import 'package:carousel/carousel.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget testCarousel = new Container(
    child: new Carousel(
      children: [
        new AssetImage('images/orange.jpeg'),
        new AssetImage('images/blue.jpeg'),
        new AssetImage('images/purple.jpeg')
      ]
          .map((img) =>
      new Image(image: img, width: 800.0, height: 300.0, fit: BoxFit.cover,))
          .toList(),
      displayDuration: const Duration(seconds: 1),
    ),
  );

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Carousel",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Carousel'),
        ),
        body: new Stack(
          children: [
            new PageView(
              children: [testCarousel],
            ),
            new ListView(
              children: [
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Text("Carousel Demo",
                    style: new TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center),
              ],
            )
          ],
        ),
      ),
    );
  }
}
