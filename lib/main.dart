import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Images'),
        ),
        body: Center(
            child: Container(
                width: 360,
                height: 360,
                // ----- To get image from assets: -----
                // child: Image.asset('assets/images/flutter.jpg')))

                // ----- To get image from network Uri:  -----
                child: Image.network(
                    'https://i.pinimg.com/originals/3a/3d/5a/3a3d5a90f77ed3f1eaba9b9289726c14.jpg'))));
  }
}
