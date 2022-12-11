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
          title: Text('Flutter Rows and Colums'),
        ),
        body: Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('R1', style: TextStyle(fontSize: 25)),
                    Text('R2', style: TextStyle(fontSize: 25)),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: (() {}), child: Text('Button 1')),
                        ElevatedButton(
                            onPressed: (() {}), child: Text('Button 2')),
                      ],
                    ),
                    Text('R3', style: TextStyle(fontSize: 25)),
                    Text('R4', style: TextStyle(fontSize: 25)),
                    Text('R5', style: TextStyle(fontSize: 25)),
                  ],
                ),
                Text('A', style: TextStyle(fontSize: 25)),
                Text('B', style: TextStyle(fontSize: 25)),
                Text('C', style: TextStyle(fontSize: 25)),
                Text('D', style: TextStyle(fontSize: 25)),
                Text('E', style: TextStyle(fontSize: 25)),
                ElevatedButton(onPressed: () {}, child: Text('Click'))
              ],
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text('A', style: TextStyle(fontSize: 25)),
            //     Text('B', style: TextStyle(fontSize: 25)),
            //     Text('C', style: TextStyle(fontSize: 25)),
            //     Text('D', style: TextStyle(fontSize: 25)),
            //     Text('E', style: TextStyle(fontSize: 25)),
            //     ElevatedButton(onPressed: () {}, child: Text('Click'))
            //   ],
            // ),
            ));
  }
}
