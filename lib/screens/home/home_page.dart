import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _greetUser() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5d7075),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Play text
            const Text(
              'PLAY',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFFF7fAFB),
              ),
            ),

            // Play icon wrapped in a container
            Container(
              height: 28.0,
              width: 28.0,
              decoration: BoxDecoration(
                color: const Color(0xFFE3E5E5).withOpacity(0.7),
                borderRadius: BorderRadius.circular(60.0),
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xFFF7fAFB),
                ),
              ),
              // Play icon
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ],
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
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Column(
              children: [
                //profile, greeting and username
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //profile, greeting and username
                    Row(
                      children: [
                        //Greetings and username
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Greetings here
                              Text(
                                '${_greetUser()},',
                                style: const TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xFFF7fAFB),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),

                              //username here
                              const Text(
                                '@Kezia',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFFF7fAFB),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //profile Avatar
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFF7fAFB),
                          width: 1.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/images/sing1.jpg'),
                      ),
                    ),
                  ],
                ),

                //Curated header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Curated',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //Column containing curated
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // curated 1
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3E5E5).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xFFF7fAFB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //image
                                  Container(
                                    height: 42.0,
                                    width: 42.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/sing1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  //curated name and number of songs
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //curated name
                                          Text(
                                            "Africa drill now",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          //number of songs
                                          Text(
                                            "20 songs",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //curated 2
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3E5E5).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xFFF7fAFB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //image
                                  Container(
                                    height: 42.0,
                                    width: 42.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/sing2.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  //curated name and number of songs
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //curated name
                                          Text(
                                            "R&B 2000 classics",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          //number of songs
                                          Text(
                                            "80 songs",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //sized box
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        // curated 3
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3E5E5).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xFFF7fAFB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //image
                                  Container(
                                    height: 42.0,
                                    width: 42.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/sing2.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  //curated name and number of songs
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //curated name
                                          Text(
                                            "The Africanicity era",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          //number of songs
                                          Text(
                                            "56 songs",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //curated 4
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3E5E5).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xFFF7fAFB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //image
                                  Container(
                                    height: 42.0,
                                    width: 42.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/sing1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  //curated name and number of songs
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //curated name
                                          Text(
                                            "Highlife in the 90s",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          //number of songs
                                          Text(
                                            "120 songs",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF667b80),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'See More >',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFF7fAFB),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
