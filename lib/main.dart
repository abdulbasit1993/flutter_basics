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

    var arrNames = ['Basit', 'Ali', 'Mubashir', 'Saad', 'Kashif', 'Abbas', 'Daniyal'];

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView'),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
          ],
        );
      },
      itemCount: arrNames.length,
          separatorBuilder: (context, index){
          return Divider(height: 100, thickness: 1,);
          },
        // reverse: true,
      )
        // ListView.builder(itemBuilder: (context, index) {
        //   return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
        // },
        // itemCount: arrNames.length,
        //   itemExtent: 150,
        //   scrollDirection: Axis.horizontal,
        //   // reverse: true,
        // )

        // ListView(
        //   scrollDirection: Axis.vertical,
        //   reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //     )
        //   ],
        // )
    );
  }
}