import 'package:flutter/material.dart';

class CuratedDetailsPage extends StatefulWidget {
  const CuratedDetailsPage({super.key});

  @override
  State<CuratedDetailsPage> createState() => _CuratedDetailsPageState();
}

class _CuratedDetailsPageState extends State<CuratedDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF667b80),
        elevation: 0,
        centerTitle: true,
        leading:
            // back icon wrapped in a gesturedetector
            GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_left_rounded,
            size: 42.0,
            color: Colors.white,
          ),
        ),
      ),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Curated image
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sing1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Other details of curated
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title of the curated
                                Text(
                                  'Africa Drill Now',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),

                                // Persons that curated the list
                                Text(
                                  'Curated by: Brilliants',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.orangeAccent,
                                  ),
                                ),

                                // number of songs
                                Text(
                                  '80 songs',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.orangeAccent,
                                  ),
                                ),

                                // Year it was curated
                                Text(
                                  '2024',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFFE3E5E5),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Number of listens
                          const Positioned(
                            bottom: 0,
                            left: 0,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '2k listens',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFFE3E5E5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

                // List of songs header text
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
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
        ),
      ),
    );
  }
}
