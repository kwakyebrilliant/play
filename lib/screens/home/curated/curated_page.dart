import 'package:flutter/material.dart';

class CuratedPage extends StatefulWidget {
  const CuratedPage({super.key});

  @override
  State<CuratedPage> createState() => _CuratedPageState();
}

class _CuratedPageState extends State<CuratedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sing1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //curated name and number of songs
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sing2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //curated name and number of songs
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sing2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //curated name and number of songs
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sing1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //curated name and number of songs
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
