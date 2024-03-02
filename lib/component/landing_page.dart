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
    );
  }
}
