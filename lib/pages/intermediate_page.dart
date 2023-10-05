import'package:flutter/material.dart';

class IntermediatePage extends StatefulWidget{
  const IntermediatePage({super.key});

  @override
  State<IntermediatePage> createState() => _IntermediatePageState();
}

class _IntermediatePageState extends State<IntermediatePage> {
  @override
  Widget build(BuildContext context){


    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: const Color(0xFF1A1D2D),
        extendBody: true,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/intermediate.png"),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              Padding(
                            padding: EdgeInsets.fromLTRB(8, 250,8, 8),
                              child: Text(
                              "Book Ticket For 3023",
                              style: TextStyle(
                              fontSize: 32,
                              color:  Color(0xFFE1D5D5),
                        ),
                                textAlign: TextAlign.center,
                      ),
                  ),



                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Depurture\n",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFFE1D5D5),

                              )
                            ),
                            Container(
                              height: 70,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xFF252A32),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                      "images/earth.png",
                                    ),
                                   Text(
                                        "Earth",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFFE1D5D5),
                                      ),
                                    ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Destination\n",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFE1D5D5),

                                )
                            ),
                            Container(
                              height: 70,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xFF252A32),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                   Padding(
                                      padding: const EdgeInsets.fromLTRB(12, 0, 0,0),
                                      child: Image.asset(
                                        "images/titan.png",
                                      ),
                                    ),
                                  Text(
                                      " Titan",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFFE1D5D5),
                                      ),
                                    ),

                                ],
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),


              Stack(
                children: [
                  Positioned(
                      child: Container(
                        width: 374,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff252a32),
                        ),
                      ),
                  ),
                  Positioned(
                    top: 5,
                      left: 10,
                      right: 10,
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("images/spacex.png"),
                                    Icon(Icons.more_horiz, color: Color(0xFFE1D5D5) ,),
                                  ],
                                ),

                              Image.asset("images/ticket.png"),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "  \$10,559",
                                      style: TextStyle(
                                        color: Color(0xFFE1D5D5) ,
                                        fontSize: 20,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){
                                        showModalBottomSheet(
                                            context: context,
                                            backgroundColor: Color(0x9035333A),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                                            ),
                                            builder: (BuilderContext){
                                              return SizedBox(
                                                height: 400,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                          child: Icon(
                                                              Icons.lock_outline_rounded,
                                                            color: Color(0xFFE1D5D5),
                                                            size: 80,
                                                          ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          textAlign: TextAlign.center,
                                                            "Locked\n Complete beginner level to unlock",
                                                          style: TextStyle(
                                                            fontSize: 30,
                                                            color: Color(0xFFE1D5D5),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: ElevatedButton(
                                                          child: const Text("Close"),
                                                          onPressed: (){
                                                            Navigator.pop(context);
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                            backgroundColor: Color(0xFF3B4552),
                                                          ),
                                                        ),

                                                      )
                                                    ],
                                                  ),

                                                ),
                                              );
                                            }
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff252a32),
                                      ),
                                      child: Container(
                                        height: 30,
                                        width: 98,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF363E48),
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0xFF56616E),
                                              blurRadius: 3,
                                            ),
                                          ]
                                        ),
                                        child: Text(
                                          "Book",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFE1D5D5) ,
                                            fontSize: 20,
                                          ),
                                        ),

                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
                      ),
                ],

              ),

            ],
          ),

    )
    );
  }
}