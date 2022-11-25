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
          title: Text('Flutter Buttons Demo'),
        ),
        body: OutlinedButton(
          child: Text('Outlined Button'),
          onPressed: () {
            print('Outlined Clicked');
          },
        )

        // ElevatedButton(
        //   child: Text('Elevated Button'),
        //   onPressed: () {
        //     print('Button Pressed');
        //   },
        // )

        // TextButton(
        //   child: Text('Click Here!!'),
        //   onPressed: () {
        //     print('Text Button Tapped!');
        //   },
        //   onLongPress: () {
        //     print('Long Pressed!');
        //   },
        // )
        );
  }
}
