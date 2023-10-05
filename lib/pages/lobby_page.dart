import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trivia/pages/intermediate_page.dart';


class LobbyPage extends StatelessWidget{
  const LobbyPage ({super.key});

  void beginnerPage(){
    print("Beginner Tapped!!");
  }



  @override
  Widget build(BuildContext context){

    void intermediatePage(){
      Navigator.push(
        context,
        PageTransition(
          child: IntermediatePage(),
          type: PageTransitionType.rightToLeft,
        ),
      );
    }

    return Scaffold(
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
          image: DecorationImage(image: AssetImage("images/About.png"),fit: BoxFit.cover),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: GestureDetector(
                    onTap: beginnerPage,
                    child: Container(

                      height: 60,
                      width: 220,

                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1D2D),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF56616E),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(5,5),
                          ),

                          BoxShadow(
                            color: Color(0xFF56616E),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(-2,-2),
                          ),
                        ],
                      ),
                      child:const Center(
                          child: Text(
                            "Beginner",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFFE1D5D5),
                            ),
                          )

                      ),
                    ),
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: GestureDetector(
                    onTap: intermediatePage,
                    child: Container(

                      height: 60,
                      width: 220,

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
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(-2,-2),
                          ),
                        ],
                      ),
                      child:const Center(
                          child: Text(
                            "Intermediate",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFE1D5D5),
                            ),
                          )

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