import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('sadi'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      
      body: Column(
        children: [

          Text('data', style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          Text('data'),

        ],

      )
    );
  }
}
