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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
