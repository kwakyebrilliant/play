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
          backgroundColor: const Color(0xFF89999D).withOpacity(0.8),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // Color for selected item
          selectedItemColor: const Color(0xFFF7fAFB),

          // Color for unselected items
          unselectedItemColor: const Color(0xFFF7fAFB),

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
                      ? const Color(0xFFE3E5E5).withOpacity(0.7)

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  border: _currentIndex == 0
                      ? Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        )
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
                      ? const Color(0xFFE3E5E5).withOpacity(0.7)

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  border: _currentIndex == 1
                      ? Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        )
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
                      ? const Color(0xFFE3E5E5).withOpacity(0.7)

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  border: _currentIndex == 2
                      ? Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        )
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
                      ? const Color(0xFFE3E5E5).withOpacity(0.7)

                      // White background for the selected item
                      : null,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  border: _currentIndex == 3
                      ? Border.all(
                          width: 1.0,
                          color: const Color(0xFFF7fAFB),
                        )
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
