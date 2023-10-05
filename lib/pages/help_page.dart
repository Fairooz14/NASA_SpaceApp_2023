import'package:flutter/material.dart';

class HelpPage extends StatelessWidget{
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color(0xFF1A1D2D),
        extendBody: true,
        body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/help.png"),
                fit: BoxFit.cover
            ),
          ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 60, 32, 32),
                  child: Text(
                      "Beginner",
                    style: TextStyle(
                      fontSize: 35,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                 "•There is 3 stars at the beginning . for each wrong answer the player will lose each star.",
                    style: TextStyle(
                      fontSize: 18,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "•There is 10 coins for each right answer in 15 seconds.",
                    style: TextStyle(
                      fontSize: 18,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "•Player will not gain any coins is they cannot answer correctly in 15 seconds. ",
                    style: TextStyle(
                      fontSize: 18,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "•Each star costs 10 coins. player can buy a star if they have 10 coin.",
                    style: TextStyle(
                      fontSize: 18,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    "Intermediate",
                    style: TextStyle(
                      fontSize: 35,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This round is a creative stage. "
                    "players need to find a way to survive on Titan. "
                        "This locked initially. ",
                    style: TextStyle(
                      fontSize: 20,
                      color:  Color(0xFFE1D5D5),
                    ),
                  ),
                ),
              ],
            ),

        )
    );
  }
}