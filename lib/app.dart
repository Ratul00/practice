import 'package:fast_flutter_project/module8/class1.dart';
import 'package:fast_flutter_project/module8/class2.dart';
import 'package:fast_flutter_project/module8/fast_ui_design.dart';
import 'package:fast_flutter_project/module8/grid_view.dart';
import 'package:fast_flutter_project/module8/list_view.dart';
import 'package:fast_flutter_project/module8/live_test_m10.dart';
import 'package:fast_flutter_project/module8/stack_practice.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Myapp extends StatelessWidget{

  Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Live test',
      home: uidesign(),


    );
  }
}