import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
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
        leading: Icon(Icons.menu,
        color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text("MediaQuery",
        style: TextStyle(
          fontFamily: 'zara',
         fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 20.0
        ),
        ),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.5,
            //mediaquery is used to divide or color
            // or etc of body in screen percentage
            //you should use extend more often than
            //mediaquery to contain screen
            //always use flex instead of this
            //but there may e some situation where media query is very useful
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          )
        ],
      ),
    );
  }
}


