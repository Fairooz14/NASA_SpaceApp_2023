import'package:flutter/material.dart';

class LearPage extends StatelessWidget{
  const LearPage({super.key});

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
                  padding: EdgeInsets.fromLTRB(32, 80, 32, 32),
                child: Text(
                  "Titan's Basic",
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color:  Color(0xFFE1D5D5),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Titan is the largest moon of Saturn, and it "
                      "holds a special place in our solar system due "
                      "to its unique characteristics. Here's an overview of "
                      "some of the most fascinating aspects of this enigmatic moon:",
                  style: TextStyle(
                    fontSize: 18,
                    color:  Color(0xFFE1D5D5),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "•Liquid Methane and Ethene lakes.\n\n"
                      "•Extremely cold surface.",
                  style: TextStyle(
                    fontSize: 18,
                    color:  Color(0xFFE1D5D5),
                  ),
                ),
              ),



              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  " •Diverse surface features : Lakes, Dune, Rivers.\n",
                  style: TextStyle(
                    fontSize: 18,
                    color:  Color(0xFFE1D5D5),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  " •Unique methane cycle with liquid hydrocarbons.",
                  style: TextStyle(
                    fontSize: 18,
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