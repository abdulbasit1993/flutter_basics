import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          title: Text('Flutter ScrollView Widgets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.lightGreen),
                        Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.orange),
                        Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.blue),
                        Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.green),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.orange),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.blue),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.grey),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.lightGreen),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.orange),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.blue),
                Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.grey),
              ],
            ),
          ),
        ));
  }
}
