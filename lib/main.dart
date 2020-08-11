import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_drawer/mydrawer.dart';
import 'package:flutter_material_drawer/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      //normal drawer
      drawer: MyDrawer(),
     //instagram like drawer on oppposite side of regular drawer location
     /* endDrawer: Drawer(),*/
      body: Center(
        child: FlutterLogo(
          size: 100.0,
        ),
      ),
    );
  }
}

