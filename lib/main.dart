import 'package:flutter/material.dart';

import 'widgets/neusquare_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'puzzle app',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonPressed = false;
  List<Widget>? tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      NeuSquareButton(
        key: UniqueKey(),
        onTap: _button4Pressed,
        isButtonpressed: isButtonPressed,
      ),
      NeuSquareButton(
        onTap: _button5Pressed,
        key: UniqueKey(),
        isButtonpressed: isButtonPressed,
      ),
      NeuSquareButton(
        onTap: _button6Pressed,
        isButtonpressed: isButtonPressed,
      ),
    ];
  }

  void _button1Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button2Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button3Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button4Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button5Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button6Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button7Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button8Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  void _button9Pressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ignore: prefer_typing_uninitialized_variables
    var key;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('puzzle test'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NeuSquareButton(
                  key: const ValueKey(1),
                  string: 'one',
                  onTap: _button1Pressed,
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  key: const ValueKey(2),
                  string: 'two',
                  onTap: key ?? _button2Pressed,
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  key: const ValueKey(3),
                  string: 'three',
                  onTap: _button3Pressed,
                  isButtonpressed: isButtonPressed,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    tiles! /*<Widget>[
                NeuSquareButton(
                  onTap: _button4Pressed,
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  onTap: _button5Pressed,
                  string: 'five',
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  onTap: _button6Pressed,
                  isButtonpressed: isButtonPressed,
                ),
              ],*/
                ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NeuSquareButton(
                  onTap: _button7Pressed,
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  onTap: _button8Pressed,
                  isButtonpressed: isButtonPressed,
                ),
                NeuSquareButton(
                  onTap: _button9Pressed,
                  isButtonpressed: isButtonPressed,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
