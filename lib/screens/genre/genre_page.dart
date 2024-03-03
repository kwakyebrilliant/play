import 'package:flutter/material.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({super.key, required this.genreName});

  final String genreName;

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
