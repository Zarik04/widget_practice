import 'package:flutter/material.dart';

void main() {

  // Stateless Widget Greeting task

  // runApp(const MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: GreetingWidget(greetingMessage: 'Hello World'),
  // ));




  // Stateful Widget Counter App Task

  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: CounterWidget(),
  // ));

}


// Stateless Greeting widget with parameter

class GreetingWidget extends StatelessWidget {
  final String? greetingMessage;
  const GreetingWidget({required this.greetingMessage});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[700],
      child: Center(
          child: Text(
            '$greetingMessage',
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 30,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          )
      ),
    );
  }
}


// This widget can be satisfy requirement of widget tree
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pressed button\n this many times:',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text(
              'Click',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


