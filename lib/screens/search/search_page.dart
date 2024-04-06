import 'package:flutter/material.dart';
import 'package:play/screens/genre/genre_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  // Simulating the duration of the song in seconds
  final int totalDurationInSeconds = 300;

  // Simulating the current progress of the song in seconds
  final int currentDurationInSeconds = 120;

  @override
  Widget build(BuildContext context) {
    // Calculating progress percentage
    double progress = currentDurationInSeconds / totalDurationInSeconds;

    // Converting progress to minutes
    int currentMinutes = (currentDurationInSeconds ~/ 60);
    int currentSeconds = currentDurationInSeconds % 60;

    int totalMinutes = (totalDurationInSeconds ~/ 60);
    int totalSeconds = totalDurationInSeconds % 60;

    // Format seconds to have double figures
    String formattedCurrentSeconds = currentSeconds.toString().padLeft(2, '0');

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
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Genre',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                // Genres using PageView
                SizedBox(
                  // Height of the PageView
                  height: 200,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      _buildCategoryContainer(
                          'assets/images/play2.png', 'Genre 1'),
                      _buildCategoryContainer(
                          'assets/images/play3.png', 'Genre 2'),
                      _buildCategoryContainer(
                          'assets/images/play4.png', 'Genre 3'),
                      _buildCategoryContainer(
                          'assets/images/play5.png', 'Genre 4'),
                    ],
                  ),
                ),

                //Recent search header text
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Recent',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //recent searches 1
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.93,
                          child: Container(
                            // Bottom sheet content here
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Arrow drop down icon centered
                                const Center(
                                  child: Icon(
                                    // Arrow drop down icon here
                                    Icons.arrow_drop_down,
                                    size: 34.0,
                                  ),
                                ),

                                // Padding wrapping the image
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                    vertical: 20.0,
                                  ),
                                  child: Container(
                                    height: 250.0,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        "assets/images/sing1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Song name
                                      const Text(
                                        "This is the way of life here",
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      // Name of artist
                                      const Text(
                                        "by brilliant",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),

                                      //linear progress bar here
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 40.0, left: 40.0, top: 60.0),
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.grey[300],
                                          valueColor:
                                              const AlwaysStoppedAnimation<
                                                  Color>(
                                            Color(0xFF667b80),
                                          ),
                                          value: progress,
                                        ),
                                      ),

                                      //padding wrapping curent minutes and total minutes
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //current minutes
                                            Text(
                                              '$currentMinutes:$formattedCurrentSeconds',
                                              style: const TextStyle(
                                                  fontSize: 14.0),
                                            ),

                                            //total minutes
                                            Text(
                                              ' $totalMinutes:${totalSeconds.toString().padLeft(2, '0')}',
                                              style: const TextStyle(
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //padding wrapping shuffle, arrow left, play, arrow right, loop
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 60.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //shuffle icon here
                                            Icon(
                                              Icons.shuffle_outlined,
                                              size: 28.0,
                                              color: const Color(0xFF667b80)
                                                  .withOpacity(0.7),
                                            ),

                                            //arrow left icon here
                                            Icon(
                                              Icons.arrow_left_outlined,
                                              size: 60.0,
                                              color: const Color(0xFF667b80)
                                                  .withOpacity(0.7),
                                            ),

                                            //play icon container
                                            Container(
                                              height: 58.0,
                                              width: 58.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF667b80),
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      const Color(0xFFF7fAFB),
                                                ),
                                              ),
                                              // Play icon
                                              child: const Icon(
                                                Icons.play_arrow_rounded,
                                                size: 30.0,
                                                color: Colors.white,
                                              ),
                                            ),

                                            //arrow right icon here
                                            Icon(
                                              Icons.arrow_right_outlined,
                                              size: 60.0,
                                              color: const Color(0xFF667b80)
                                                  .withOpacity(0.7),
                                            ),

                                            //loop icon here
                                            Icon(
                                              Icons.loop_outlined,
                                              size: 28.0,
                                              color: const Color(0xFF667b80)
                                                  .withOpacity(0.7),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //padding wrapping container containing info icon, favorite icon and add icon
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40.0),
                                        child: Container(
                                          height: 50.0,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF667b80),
                                            borderRadius:
                                                BorderRadius.circular(60.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                //info icon here
                                                Container(
                                                  height: 28.0,
                                                  width: 28.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFE3E5E5)
                                                            .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60.0),
                                                    border: Border.all(
                                                      width: 1.0,
                                                      color: const Color(
                                                          0xFFF7fAFB),
                                                    ),
                                                  ),
                                                  // info icon
                                                  child: const Icon(
                                                    Icons.info_rounded,
                                                    size: 20.0,
                                                    color: Colors.white,
                                                  ),
                                                ),

                                                //favorite icon here
                                                Container(
                                                  height: 28.0,
                                                  width: 28.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFE3E5E5)
                                                            .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60.0),
                                                    border: Border.all(
                                                      width: 1.0,
                                                      color: const Color(
                                                          0xFFF7fAFB),
                                                    ),
                                                  ),
                                                  // favorite icon
                                                  child: const Icon(
                                                    Icons.favorite_outline,
                                                    size: 20.0,
                                                    color: Colors.white,
                                                  ),
                                                ),

                                                //add icon here
                                                Container(
                                                  height: 28.0,
                                                  width: 28.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFE3E5E5)
                                                            .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60.0),
                                                    border: Border.all(
                                                      width: 1.0,
                                                      color: const Color(
                                                          0xFFF7fAFB),
                                                    ),
                                                  ),
                                                  // add icon
                                                  child: const Icon(
                                                    Icons.add_rounded,
                                                    size: 20.0,
                                                    color: Colors.white,
                                                  ),
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
                        );
                      },
                    );
                  },
                  child: Padding(
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
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/sing1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            // Song name and artist name
                            const Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Song name
                                    Text(
                                      "This is the way of life here ",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                    // Name of artist
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

                            // Favorite icon
                            Column(
                              children: [
                                // Favorite icon wrapped in a container
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
                                  // Favorite icon
                                  child: const Icon(
                                    Icons.favorite_outlined,
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
                ),

                //recent searches 2
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          //image
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/sing2.jpg"),
                                fit: BoxFit.cover,
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
                                    "This is the way",
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

                          //favorite icon
                          Column(
                            children: [
                              // favorite icon wrapped in a container
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
                                // favorite icon
                                child: const Icon(
                                  Icons.favorite_outlined,
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

                //recent searches 3
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          //image
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/sing1.jpg"),
                                fit: BoxFit.cover,
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

                          //favorite icon
                          Column(
                            children: [
                              // favorite icon wrapped in a container
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
                                // favorite icon
                                child: const Icon(
                                  Icons.favorite_outlined,
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

  Widget _buildCategoryContainer(String imagePath, String category) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GenrePage(genreName: category),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFFF7fAFB),
            )),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                decoration: BoxDecoration(
                    color: const Color(0xFFE3E5E5).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xFFF7fAFB),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Genre and the number of songs
                    Column(
                      children: [
                        //genre
                        Text(
                          category,
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        //number of songs
                        const Text(
                          "186 Songs",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //play logo here
                    Column(
                      children: [
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
                            Icons.play_arrow_outlined,
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
          ],
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
