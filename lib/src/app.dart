// Import flutter helper library
import 'package:flutter/material.dart';


class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

//Create a class that will be our custom widget
// Class must extend the StatelessWidget base class
class AppState extends State<App> {
// Must define a 'build' method that returns
// the widgets that this widget will show

  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      // home parameter is the first thing that displays when the app loads
      // home: Text('Hi there!'),
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: MaterialColor(7776, ),
          child: Icon(Icons.set_meal, color: Color.fromARGB(255, 6, 30, 241),),
          onPressed: () {
            print('You pressed Peplin\'s Fish.');
            setState(() {
              counter += 1;
            });
          },
        ),
        
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Peplin\'s first flutter app!'),
        ),
      ),
      // Text widget displays text on the screen
    );
  }
}


