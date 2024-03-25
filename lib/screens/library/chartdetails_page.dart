import 'package:flutter/material.dart';

class ChartDetailsPage extends StatefulWidget {
  const ChartDetailsPage({super.key});

  @override
  State<ChartDetailsPage> createState() => _ChartDetailsPageState();
}

class _ChartDetailsPageState extends State<ChartDetailsPage> {
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
      ),
    );
  }
}
