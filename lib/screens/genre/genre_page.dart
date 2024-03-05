import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({super.key, required this.genreName});

  final String genreName;

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF667b80),
        elevation: 0,
        centerTitle: true,
        leading:
            // back icon wrapped in a gesturedetector
            GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_left_rounded,
            size: 42.0,
            color: Colors.white,
          ),
        ),
        title:
            // Search TextFormField
            TextFormField(
          // controller: _searchController,
          style: const TextStyle(
            color: Color(0xFFF7fAFB),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFE3E5E5).withOpacity(0.7),
            hintText: widget.genreName,
            hintStyle: TextStyle(
              color: const Color(0xFF667b80).withOpacity(0.7),
            ),
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: Color(0xFFF7fAFB),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
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
                //Genre header and popular text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //Column containing popular
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // popular 1
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

                                  //song name and artiste name
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //song name
                                          Text(
                                            "This is the way of life",
                                            style: TextStyle(
                                              fontSize: 14.0,
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

                        //popular 2
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

                                  //song name and artiste name
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //song name
                                          Text(
                                            "This is the way of life",
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
                        // popular 3
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

                                  //song name and artiste name
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //song name
                                          Text(
                                            "This is the way of life",
                                            style: TextStyle(
                                              fontSize: 14.0,
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

                        //popular 4
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

                                  //song name and artiste name
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //song name
                                          Text(
                                            "This is the way of life",
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
                  ],
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
}
