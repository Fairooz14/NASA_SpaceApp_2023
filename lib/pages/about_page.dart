import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trivia/pages/start_page.dart';


class AboutPage extends StatelessWidget{
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context){

    /*void  startpage(){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder:(context)=> const StartPage(),
          ));
    }*/
    void startpage(){
      Navigator.push(context,
          PageTransition(
              child: StartPage(),
              type: PageTransitionType.rightToLeft,
          ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFF1A1D2D),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body:Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/About.png"),fit: BoxFit.cover),

          ),
            child:Container(
              height: 750,
              width: 420,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors:<Color>[
                      Color(0x50624848),
                      Color(0x50373C56),
                    ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: Text("Titan Trivia : 3023 is a futuristic game."
                            " Before Begin the game players need to know about "
                            "Titan understand the challenges to live on Titan.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),

                      ),
                      const Padding(
                          padding: EdgeInsets.all(25),
                        child: Text("Titan is the largest moon of Saturn and one of the most intriguing objects of our solar system. "
                            "The game will help our gamer to explore the mysteries of the enigmatic moon ,"
                            " including its atmosphere , surface features and potential for harboring life. "
                            "This game will be a fun experience for the players to learn about science and its "
                            "application to build a human civilization from its ground up in a Minor planet like titan.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(25),
                        child: Text("Though the Titan’s environment is mostly like Earth there are "
                            "some environmental Obstacles the players need to overcome the Obstacles"
                            " to make this mission successful.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: GestureDetector(
                            onTap: startpage,
                            child: Container(

                              height: 50,
                              width: 170,

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
                                child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                  color: Color(0xFFE1D5D5),
                                  size: 30,
                                ),

                              ),
                            ),
                          ),

                        ),
                      ),
                    ],

                  ),
            ),
            )

    )
    );
  }
}