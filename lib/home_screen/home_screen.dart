import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/drawe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Home Screen",
          style: GoogleFonts.aBeeZee(
            color: Color.fromARGB(255, 185, 154, 33),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.white,
      ),
      
      drawer: Drawe(),
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        )
    );
  }
}
