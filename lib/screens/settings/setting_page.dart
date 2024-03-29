import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 40.0),
            child: Column(
              children: [
                //profile, greeting, username and notification icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //profile, greeting and username
                    Row(
                      children: [
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
                            backgroundImage:
                                AssetImage('assets/images/sing1.jpg'),
                          ),
                        ),

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
                                '@Brilliant',
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

                    //notification icon
                    const Icon(
                      Icons.notifications_on,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),

                //You header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'You',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //You cards start here
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //account here
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: const Color(0xFFF7fAFB),
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 42.0,
                                width: 42.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(60.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF7fAFB),
                                  ),
                                ),
                                // Person icon
                                child: const Icon(
                                  Icons.person_rounded,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Account',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //devices here
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: const Color(0xFFF7fAFB),
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 42.0,
                                width: 42.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(60.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF7fAFB),
                                  ),
                                ),
                                // devices icon
                                child: const Icon(
                                  Icons.devices_rounded,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Devices',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //premium here
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE3E5E5).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: const Color(0xFFF7fAFB),
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 42.0,
                                width: 42.0,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFE3E5E5).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(60.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF7fAFB),
                                  ),
                                ),
                                // workspace premium icon
                                child: const Icon(
                                  Icons.workspace_premium_rounded,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Premium',
                                  style: TextStyle(
                                    color: Colors.white,
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

                //Others header text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Others',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFF7fAFB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //Other items here
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3E5E5).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: const Color(0xFFF7fAFB),
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      //notifications here
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // notification icon
                                    child: const Icon(
                                      Icons.notifications,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                //notifications text here
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Notifications',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //arrow right icon here
                            const Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //audio quality here
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // speaker icon
                                    child: const Icon(
                                      Icons.speaker_rounded,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                //audio quality text here
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Audio Quality',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //arrow right icon here
                            const Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //about us here
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // information icon
                                    child: const Icon(
                                      Icons.info_rounded,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                //about us text here
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'About Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //arrow right icon here
                            const Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //theme here
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E5)
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // toggle on rounded icon
                                    child: const Icon(
                                      Icons.toggle_on_rounded,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                //themes text here
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Themes',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //logout text here
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      'LOGOUT',
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
      ),
    );
  }
}
