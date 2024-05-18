
import 'package:flutter/material.dart';

import 'featuers/home/views/home_screen.dart';

void main(){
  runApp(BellaApp());
}
class BellaApp extends StatelessWidget {
  const BellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );


  }
}