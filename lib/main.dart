import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charging Buttons',
      home: FlutterExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FlutterExample extends StatefulWidget {
  FlutterExample({Key? key}) : super(key: key);

  @override
  _FlutterExampleState createState() => _FlutterExampleState();
}

class _FlutterExampleState extends State<FlutterExample> {
  bool status = true;

  disableButton() {
    setState(() {
      status = false;
    });
  }

  enableButton() {
    setState(() {
      status = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charging Button'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: status == false ? () {} : null,
                color: Colors.blueAccent,
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                animationDuration: const Duration(seconds: 5),
                child: Text(status ? 'Not Charging' : 'Charging'),
              ),
              SizedBox(
                height: 100,
              ),
              RaisedButton(
                onPressed: status == false ? null : disableButton,
                color: Colors.lightGreen,
                textColor: Colors.white,
                child: Text('Start'),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: status ? null : enableButton,
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Stop'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
