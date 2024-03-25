import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartDetailsPage extends StatefulWidget {
  const ChartDetailsPage({super.key});

  @override
  State<ChartDetailsPage> createState() => _ChartDetailsPageState();
}

class _ChartDetailsPageState extends State<ChartDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF667b80),
              Color(0xFF89999d),
              Color(0xFFb09689),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //top image
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/sing1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xFF000000).withOpacity(0.5),
                        ),
                      ),
                    ),

                    //arrow left here
                    Positioned(
                      top: 20.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        //arrow left icon
                        child: const Icon(
                          Icons.arrow_left_rounded,
                          size: 62.0,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //header text starts here
                    const Positioned(
                      bottom: 45.0,
                      left: 0.0,
                      right: 0.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //first text
                          Text(
                            'TOP 100',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFF7fAFB),
                            ),
                          ),

                          //second text
                          Text(
                            'Global',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFF7fAFB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // List of songs starts here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    //List of songs header text
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Songs',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFFF7fAFB),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //song 1
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              //number
                              Container(
                                height: 42.0,
                                width: 42.0,
                                child: const Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              //song name and artiste name
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //song name
                                      Text(
                                        "This is the way of life here ",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      //name of artiste
                                      Text(
                                        "brilliant",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer to push the favorite icon to the end
                              const Spacer(),

                              //play icon
                              Column(
                                children: [
                                  // play icon wrapped in a container
                                  Container(
                                    height: 28.0,
                                    width: 28.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xFFF7fAFB),
                                      ),
                                    ),
                                    // play icon
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //song 2
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              //number
                              Container(
                                height: 42.0,
                                width: 42.0,
                                child: const Center(
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              //song name and artiste name
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //song name
                                      Text(
                                        "This is the way of life ",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      //name of artiste
                                      Text(
                                        "brilliant",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer to push the favorite icon to the end
                              const Spacer(),

                              //play icon
                              Column(
                                children: [
                                  // play icon wrapped in a container
                                  Container(
                                    height: 28.0,
                                    width: 28.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xFFF7fAFB),
                                      ),
                                    ),
                                    // play icon
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //song 3
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              //number
                              Container(
                                height: 42.0,
                                width: 42.0,
                                child: const Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              //song name and artiste name
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //song name
                                      Text(
                                        "This is the way here ",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      //name of artiste
                                      Text(
                                        "brilliant",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer to push the favorite icon to the end
                              const Spacer(),

                              //play icon
                              Column(
                                children: [
                                  // play icon wrapped in a container
                                  Container(
                                    height: 28.0,
                                    width: 28.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xFFF7fAFB),
                                      ),
                                    ),
                                    // play icon
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //song 4
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              //number
                              Container(
                                height: 42.0,
                                width: 42.0,
                                child: const Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              //song name and artiste name
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //song name
                                      Text(
                                        "This is the way of life here ",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      //name of artiste
                                      Text(
                                        "brilliant",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer to push the favorite icon to the end
                              const Spacer(),

                              //play icon
                              Column(
                                children: [
                                  // play icon wrapped in a container
                                  Container(
                                    height: 28.0,
                                    width: 28.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xFFF7fAFB),
                                      ),
                                    ),
                                    // play icon
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //song 5
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, right: 15.0),
                          child: Row(
                            children: [
                              //number
                              Container(
                                height: 42.0,
                                width: 42.0,
                                child: const Center(
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              //song name and artiste name
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //song name
                                      Text(
                                        "This way of life ",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      //name of artiste
                                      Text(
                                        "brilliant",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer to push the favorite icon to the end
                              const Spacer(),

                              //play icon
                              Column(
                                children: [
                                  // play icon wrapped in a container
                                  Container(
                                    height: 28.0,
                                    width: 28.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xFFF7fAFB),
                                      ),
                                    ),
                                    // play icon
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
