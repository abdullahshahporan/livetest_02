import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: 'Live Test 02',
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
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
