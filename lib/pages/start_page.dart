import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trivia/pages/help_page.dart';
import 'package:trivia/pages/latest_page.dart';
import 'package:trivia/pages/learn_page.dart';
import 'package:trivia/pages/lobby_page.dart';


class StartPage extends StatefulWidget{
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  int index = 0;

  final screens =  [
    LobbyPage(),
    LearPage(),
    LatestPage(),
    HelpPage(),
  ];

  @override
  Widget build(BuildContext context){


    final items= <Widget> [
      Icon(Icons.home_filled, color: Color(0xFFE1D5D5) , size: 35,),
      Icon(Icons.auto_stories, color: Color(0xFFE1D5D5) , size: 35,),
      Icon(Icons.rocket_launch, color: Color(0xFFE1D5D5) , size: 35,),
      Icon(Icons.info_outline, color: Color(0xFFE1D5D5) ,  size: 35,),
    ];

    return Scaffold(
      /*extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),*/
      bottomNavigationBar: CurvedNavigationBar(
        items : items,
        index: index,
        onTap: (selectedIndex){
          setState(() {
            index = selectedIndex;
            PageTransition(
                child: screens[index],
                type: PageTransitionType.bottomToTopPop
            );
          }
          );
          },
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Color(0xFF1A1D2D),
        color: Color(0xFF35333A),
      ),

      body: screens[index],
    );
  }
}