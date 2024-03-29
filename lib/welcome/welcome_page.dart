import 'package:flutter/material.dart';
import 'package:play/component/landing_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //play logo
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //play text
                    const Text(
                      'PLAY',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFF7fAFB),
                      ),
                    ),

                    // play icon wrapped in a container
                    Container(
                      height: 42.0,
                      width: 42.0,
                      decoration: BoxDecoration(
                          color: const Color(0xFFE3E5E5).withOpacity(0.7),
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFF7fAFB),
                          )),
                      //play icon
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // subtext
              const Text(
                'Music the way you love it.',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color(0xFFF7fAFB),
                ),
              ),

              //Get started button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LandingPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFE3E5E5).withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
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
                                    color: Colors.white,
                                  )),
                              //play icon
                              child: const Icon(
                                Icons.play_arrow_rounded,
                                size: 24.0,
                                color: Color(0xFFF7fAFB),
                              ),
                            ),

                            //Get started text
                            const Padding(
                              padding: EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                  color: Color(0xFFF7fAFB),
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

              //image
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Image.asset(
                    "assets/images/play.png",
                    width: MediaQuery.of(context).size.width,
                    height: 400.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
