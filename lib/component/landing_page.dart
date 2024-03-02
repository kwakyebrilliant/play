import 'package:flutter/material.dart';
import 'package:play/screens/home/home_page.dart';
import 'package:play/screens/library/library_page.dart';
import 'package:play/screens/search/search_page.dart';
import 'package:play/screens/settings/setting_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const LibraryPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFF7fAFB),
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF89999D).withOpacity(0.9),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // Color for selected item
          selectedItemColor: const Color(0xFFb09689),

          // Color for unselected items
          unselectedItemColor: Theme.of(context).colorScheme.inversePrimary,

          // Hide selected labels
          showSelectedLabels: true,

          // Hide unselected labels
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: _currentIndex == 0
                      ? Theme.of(context).colorScheme.inversePrimary

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  boxShadow: _currentIndex == 0
                      ? [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                ),
                child: const Icon(Icons.home_rounded),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: _currentIndex == 1
                      ? Theme.of(context).colorScheme.inversePrimary

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  boxShadow: _currentIndex == 1
                      ? [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                ),
                child: const Icon(Icons.history_edu_rounded),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: _currentIndex == 2
                      ? Theme.of(context).colorScheme.inversePrimary

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  boxShadow: _currentIndex == 2
                      ? [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                ),
                child: const Icon(Icons.library_music_rounded),
              ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: _currentIndex == 3
                      ? Theme.of(context).colorScheme.inversePrimary

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  boxShadow: _currentIndex == 3
                      ? [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                ),
                child: const Icon(Icons.settings),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
