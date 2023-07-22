import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController con_password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 45),
          alignment: Alignment.bottomCenter,
        /*  decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash_image.png"),
              alignment: Alignment.topCenter,
              scale: 3,
            ),
          ),*/
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 50),
            height: 480,
            width: 380,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(1.0, 0.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "Welcome",
                      style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 185, 154, 33),
                        fontSize: 24,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //Padding(padding: EdgeInsets.fromLTRB(20,30, 20, 30)),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false, // if true it will hide the text
                    decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(82, 133, 140, 162),
                    ),
                  ),
                  TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(82, 133, 140, 162),
                    ),
                  ),
                  TextFormField(
                    controller: con_password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(82, 133, 140, 162),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an account?",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(" Log In",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////////// 1 button
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(121, 185, 154, 33)),
                        overlayColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(72, 255, 255, 255)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(30, 10, 30, 10)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
