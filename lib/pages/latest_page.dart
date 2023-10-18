import'package:flutter/material.dart';

//import 'package:nasa_apis/nasa_apis.dart';
//import 'package:http/http.dart' as http;


class LatestPage extends StatefulWidget{
  const LatestPage({super.key});

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1A1D2D),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 30, 25),
                child: Text(
                  "The Latest",
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
                child:Container(
                  height: 228,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/zoom_in.jpg",
                            fit: BoxFit.cover,
                        ),
                        Text(
                            "Zoom In On Titan",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Container(
                  height: 228,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/changes_in_titan_lake.jpg",
                          height: 190,
                          width: 490,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Changes in Titan Lakes",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Container(
                  height: 228,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/ethane_lake.jpg",
                          height: 190,
                          width: 490,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Titan Ethane Lake",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Container(
                  height: 228,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/typography.jpg",
                          height: 190,
                          width: 490,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Topography on Titan",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Container(
                  height: 228,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/titan_whispers.jpg",
                          height: 190,
                          width: 490,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Titan Whispers",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFE1D5D5),
                          ),
                        ),
                      ],
                    ),

                  ),

                ),
              ),

              ElevatedButton(
                onPressed: (){},
                child: Text(
                  "More",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color:  Color(0xFFE1D5D5),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3B4552),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
