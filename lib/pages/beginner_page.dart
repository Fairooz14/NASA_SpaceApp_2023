import 'package:flutter/material.dart';

class BeginnerPage extends StatelessWidget{
  const BeginnerPage ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color(0xFF1A1D2D),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
    ),

    extendBody: true,
    body: Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(32),
    decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage("images/quiz_1.png"),fit: BoxFit.cover),
       ),
      ),
    );
  }
}