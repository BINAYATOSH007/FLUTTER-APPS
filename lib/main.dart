import 'package:flutter/material.dart';
//the main function is the starting point for all our fluuter apps
void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I AM RICH'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://images.immediate.co.uk/production/volatile/sites/3/2023/03/Jujutsu-Kaisen-Cropped-dbe733b.jpg?quality=90&resize=844,563.jpg'),

          ),
        ),
      ),
    ),
  );
}