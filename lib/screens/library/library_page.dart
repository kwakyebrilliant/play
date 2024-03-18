// Import necessary libraries
import 'package:flutter/material.dart';

// Define the LibraryPage widget
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

// Define the state for the LibraryPage widget
class _LibraryPageState extends State<LibraryPage> {
  // Index of the selected tab
  int _selectedIndex = 0;

  // Define tab contents
  final List<Widget> _tabContents = [
    //Recents content
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF7fAFB),
                ),
              ),
            ),
            child: Row(
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
                        color: const Color(0xFFE3E5E5).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        ),
                      ),
                      // favorite icon
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

        //2
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF7fAFB),
                ),
              ),
            ),
            child: Row(
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
                        color: const Color(0xFFE3E5E5).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        ),
                      ),
                      // favorite icon
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
      ],
    ),
    const Center(child: Text('Playlists Content')),
    //Favorites content
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF7fAFB),
                ),
              ),
            ),
            child: Row(
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
                        color: const Color(0xFFE3E5E5).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        ),
                      ),
                      // favorite icon
                      child: const Icon(
                        Icons.favorite_rounded,
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

        //2
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF7fAFB),
                ),
              ),
            ),
            child: Row(
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
                        color: const Color(0xFFE3E5E5).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        ),
                      ),
                      // favorite icon
                      child: const Icon(
                        Icons.favorite_rounded,
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

    //Charts contents here
    Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7.0, top: 27.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //1
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
                          'Global 100',
                          style: TextStyle(
                            color: Color(0xFFF7fAFB),
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
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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

                //5
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
                          'Amapiano 10',
                          style: TextStyle(
                            color: Color(0xFFF7fAFB),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //6
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
                          'Pop 100',
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
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Define the number of tabs
      length: 4,
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
          child:
              //make this column scrollable
              Column(
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
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF7fAFB),
                      ),
                    ),
                  ),

                  //Add playlist here
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 15.0),
                    child: Row(
                      children: [
                        // Add playlist icon wrapped in a container
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
                          // Add playlist icon
                          child: const Icon(
                            Icons.add_rounded,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Tab bar
              TabBar(
                tabs: const [
                  Tab(text: 'Recents'),
                  Tab(text: 'Playlists'),
                  Tab(text: 'Favorites'),
                  Tab(text: 'Charts'),
                ],
                indicatorColor: Colors.white,
                dividerColor: Colors.transparent,
                labelStyle: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                ),
                // Update the selected tab index
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),

              // Display the selected tab content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3E5E5).withOpacity(0.7),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(60.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFFF7fAFB),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: _tabContents[_selectedIndex],
                    ),
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
