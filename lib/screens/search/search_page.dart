import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                //logo and search input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //play logo
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //play text
                          const Text(
                            'PLAY',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFF7fAFB),
                            ),
                          ),

                          // play icon wrapped in a container
                          Container(
                            height: 28.0,
                            width: 28.0,
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
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //search textformfield
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                        child: TextFormField(
                          // controller: _searchController,
                          style: const TextStyle(
                            color: Color(0xFFF7fAFB),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE3E5E5).withOpacity(0.7),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: const Color(0xFF667b80).withOpacity(0.7),
                            ),
                            prefixIcon: const Icon(
                              Icons.search_rounded,
                              color: Color(0xFFF7fAFB),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFF7fAFB),
                                width: 1.0,
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
