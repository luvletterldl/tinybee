import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    bool _switchSelected = true; //维护单选开关状态
    bool _checkboxSelected = true; //维护复选框状态

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/banana.jpg',
              height: 100,
              fit: BoxFit.cover,
            ),
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            // Text(
            //   'Yo:',
            //   style: TextStyle(
            //       background: new Paint()..color = Colors.yellow,
            //       fontSize: 18,
            //       fontFamily: "Courier",
            //       color: Colors.blue,
            //       decoration: TextDecoration.underline,
            //       decorationStyle: TextDecorationStyle.dashed),
            // ),
            // RaisedButton.icon(
            //   icon: Icon(
            //     Icons.send,
            //     color: Colors.white,
            //   ),
            //   color: Colors.blue,
            //   highlightColor: Colors.blue[700],
            //   label: Text(
            //     "normal",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50)),
            //   onPressed: () => {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.thumb_up),
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
