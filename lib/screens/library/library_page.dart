import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Define the number of tabs
      child: Scaffold(
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
          child: Column(
            children: [
              // Listening, create playlist and Search input
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 15.0),
                    child: Text(
                      'Listening',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFF7fAFB),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 15.0),
                    child: Row(
                      children: [
                        // Add playlist icon wrapped in a container
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Container(
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
                            // Add playlist icon
                            child: const Icon(
                              Icons.add_rounded,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        Text("data"),
                      ],
                    ),
                  ),
                ],
              ),

              // Tab bar
              Container(
                child: TabBar(
                  tabs: [
                    Tab(
                      text: 'Home',
                    ),
                    Tab(
                      text: 'Search',
                    ),
                    Tab(
                      text: 'Library',
                    ),
                    Tab(
                      text: 'Settings',
                    ),
                  ],
                ),
              ),
              // Tab bar views
              Expanded(
                child: TabBarView(
                  children: [
                    // First tab content
                    Container(
                      child: Center(
                        child: Text('Home Page Content'),
                      ),
                    ),
                    // Second tab content
                    Container(
                      child: Center(
                        child: Text('Search Page Content'),
                      ),
                    ),
                    // Third tab content
                    Container(
                      child: Center(
                        child: Text('Library Page Content'),
                      ),
                    ),
                    // Fourth tab content
                    Container(
                      child: Center(
                        child: Text('Settings Page Content'),
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
