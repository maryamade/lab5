import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text(
              'Maryam Adel',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Embedded Software',
              style: TextStyle(
                  color: Colors.white, fontSize: 30, letterSpacing: 2),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal[100],
              indent: 40,
              endIndent: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '+20 01007349654',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'ma4549@fayoum.edu.eg',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
