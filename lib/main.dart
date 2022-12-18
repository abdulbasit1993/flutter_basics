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
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: (context, index){
            return Divider(height: 20, thickness: 1,);
          },
          // reverse: true,
        )
    );
  }
}