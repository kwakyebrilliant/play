import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

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
                // Logo and Search input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Play Logo
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Row(
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

                    // Search TextFormField
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
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFF7fAFB),
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
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

                //Genre header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Genre',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                        ),
                      ),
                    ],
                  ),
                ),

                // Categories using PageView
                SizedBox(
                  // Height of the PageView
                  height: 200,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      _buildCategoryContainer(
                          'assets/images/sing1.jpg', 'Category 1'),
                      _buildCategoryContainer(
                          'assets/images/sing2.jpg', 'Category 2'),
                      _buildCategoryContainer(
                          'assets/images/play.png', 'Category 3'),
                      _buildCategoryContainer(
                          'assets/images/play2.png', 'Category 4'),
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

  Widget _buildCategoryContainer(String imagePath, String category) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFF7fAFB),
        ),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
