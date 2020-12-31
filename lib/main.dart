import 'package:flutter/material.dart';
import 'package:flutter_firebase_ml_app/textDetection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase ML Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
              side: BorderSide(color: Colors.blue)),
          color: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 60),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TextDetection()));
          },
          child: Text('Text Detection'),
        ),
      ),
    );
  }
}
