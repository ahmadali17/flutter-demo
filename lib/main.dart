
import 'file:///D:/ITI/Flutter/Flutter%20-%20Day1/day1/lib/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Enter Your Email"
                ),
              ),
              TextFormField(
                obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Enter Your Password"
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: const Text('Submit', style: TextStyle(fontSize: 20)),
                  ),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text("Need an account? Register"),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("Forget password?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
