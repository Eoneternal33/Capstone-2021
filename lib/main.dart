
import '../homepage/coursespage.dart';
import 'package:flutter/material.dart';
import './headerPage/header.dart';
import './headerPage/buttons.dart';


void main() {
 
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Capstone',
      theme: ThemeData(
        primaryColor: Colors.green[900],
      ),
      home: new RegisterPage(),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Courses(),
        );
      },
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nana\'s Green Box'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(),
          Buttons(),
          Image(
                  image: AssetImage('assets/greenBox.png'),
                ),
        ],
      ),
    
    );
  }
}

