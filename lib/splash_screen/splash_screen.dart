import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super
        .initState(); // I will make a timer here after it finish the login screen will shown
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //mainAxisAlignment: MainAxisAlignment.center,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              "assets/background_.jpg",
              fit: BoxFit.cover,
              height: 770,
            ),
            Text(
              "\nTo Do App\n\n\n\n",
              style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 185, 154, 33),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
