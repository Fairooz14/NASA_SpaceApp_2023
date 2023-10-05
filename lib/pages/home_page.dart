import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trivia/pages/about_page.dart';


class HomePage extends StatelessWidget{
  const HomePage ({super.key});


  @override
  Widget build(BuildContext context){

    void aboutpage(){
      Navigator.push(context,
        PageTransition(
            child: AboutPage(),
            type: PageTransitionType.rightToLeft,
        ),
      );
    }
    return Scaffold(

      backgroundColor: Color(0xFF1A1D2D),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/home.png"),fit: BoxFit.cover),
        ),
        child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Titan Trivia:3023",
                    style: TextStyle(
                      fontSize: 45,
                      color: Color(0xFFE1D5D5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: aboutpage,
                      child: Container(

                        height: 60,
                        width: 180,

                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1D2D),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          boxShadow: const [
                             BoxShadow(
                              color: Color(0xFF56616E),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(5,5),
                            ),

                            BoxShadow(
                              color: Color(0xFF56616E),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(-4,-4),
                            ),
                          ],
                        ),
                        child:const Center(
                          child: Text(
                            "Start",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w100,
                              color:  Color(0xFFE1D5D5),
                            ),
                          ),
                        ),
                        ),
                    ),
                    ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}