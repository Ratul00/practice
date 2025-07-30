import 'package:flutter/material.dart';

import 'home.dart';

class Myapp extends StatelessWidget{

  Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Assignment App',
      home: Home(),


    );
  }
}