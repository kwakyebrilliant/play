import 'package:flutter/material.dart';
import 'package:play/screens/home/curated/curated_page.dart';
import 'package:play/screens/library/chartdetails_page.dart';

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
                Container(
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
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //greetings, username, type of user
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  //verified icon
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.0),
                                    child: Icon(
                                      Icons.verified_rounded,
                                      size: 20.0,
                                      color: Color(0xFF667b80),
                                    ),
                                  ),

                                  //type of user text
                                  Text(
                                    'Premium User',
                                    style: TextStyle(
                                      color: Color(0xFF667b80),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //Greetings here
                            Text(
                              '${_greetUser()},',
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFFF7fAFB),
                                fontWeight: FontWeight.w300,
                              ),
                            ),

                            //username here
                            const Text(
                              '@Brilliant',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFFF7fAFB),
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            //play text and icon
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),

                              //container wrapping play text and icon
                              child: Container(
                                height: 28.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF667b80).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                                // play text and icon
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //play text
                                      Text(
                                        'Play Now',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFFF7fAFB),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      //play icon
                                      Icon(
                                        Icons.play_arrow_rounded,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //image
                        Column(
                          children: [
                            Container(
                              height: 120.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/sing1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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

                //Curated list
                const CuratedPage(),

                //Trending musics header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Trending Musics',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //Trending music start here
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //trending 1
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(
                            children: [
                              // Image
                              Container(
                                height: 120.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/sing1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Name of the song
                              const Positioned(
                                bottom: 5.0,
                                left: 5.0,
                                right: 5.0,
                                child: Text(
                                  'This is the way of life in',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              // Name of Artist
                              Positioned(
                                top: 80.0,
                                left: 0,
                                right: 5.0,
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'Kezia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //trending 2
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(
                            children: [
                              // Image
                              Container(
                                height: 120.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/sing2.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Name of the song
                              const Positioned(
                                bottom: 5.0,
                                left: 5.0,
                                right: 5.0,
                                child: Text(
                                  'L.I.F.E',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              // Name of Artist
                              Positioned(
                                top: 80.0,
                                left: 0,
                                right: 5.0,
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'Brilliant',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //trending 3
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(
                            children: [
                              // Image
                              Container(
                                height: 120.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/sing1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Name of the song
                              const Positioned(
                                bottom: 5.0,
                                left: 5.0,
                                right: 5.0,
                                child: Text(
                                  'Azonto fieasta',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              // Name of Artist
                              Positioned(
                                top: 80.0,
                                left: 0,
                                right: 5.0,
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'egya p',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Featured Charts header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Featured Charts',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //Featured Charts start here
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //1
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChartDetailsPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF667b80),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xFFF7fAFB),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Center(
                                child: Text(
                                  'Global 100',
                                  style: TextStyle(
                                    color: Color(0xFFF7fAFB),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //2
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF667b80),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFF7fAFB),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                'Afrobeat 10',
                                style: TextStyle(
                                  color: Color(0xFFF7fAFB),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //3
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF667b80),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFF7fAFB),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                'Hip Life 15',
                                style: TextStyle(
                                  color: Color(0xFFF7fAFB),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //4
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF667b80),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xFFF7fAFB),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                'Highlife Top 50',
                                style: TextStyle(
                                  color: Color(0xFFF7fAFB),
                                ),
                              ),
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
      ),
    );
  }
}
