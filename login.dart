import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'dart:ui.Shader';

//-image not merged with background
//-change the relative setting of height width and rest stuff as per the mobiles' height width
//light colored 'hintText' & subsequent input [DONE]  TextField(style: GoogleFonts.gabriela(color: Color.fromARGB(255, 176, 237, 232)),),

var emaltext = TextEditingController();
var pastxt = TextEditingController();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // var dlar = 67.45;//these aren't GLOBAL, the BOTTOM ones are.
    // var sgn = '\$';
    // var lnk =
    //     'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg';
    // var jkt = 'Red Jacket';
    // var siz = 'Size : XXL';
    return MaterialApp(
      title: 'Flutter Interfacing',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(234, 29, 6, 120),
        primaryColor: Color.fromRGBO(234, 29, 6, 120),
      ),
      home: Scaffold(
        //     appBar: AppBar(),
        body: ListView(
          children: [
            Lgin,
            lginup,
          ],
        ),
      ),
    );
  }
}

//
//
//
//
Widget Lgin = Center(
  child: Container(
    //width: 385,
    height: 677,
    //color: Color.fromARGB(234, 29, 6, 120),

    decoration: BoxDecoration(
        //color: Color.fromARGB(234, 135, 106, 250),

        ),
    child: Column(
      children: [
        // ShaderMask(shaderCallback: (rect){return shader},
        // child:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('imagz/shnp.png'),
          )),
        ),
        //),
        Padding(
          padding: const EdgeInsets.only(top: 44.0),
          child: SizedBox(
            height: 233,
            //  width: 224,
            child: Image.asset(
              'imagz/shnp.jpg',
              //fit: BoxFit.,
            ),
          ),
        ),
        Divider(
          indent: 73,
          endIndent: 73,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Text(
            'Welcome Back!',
            style: GoogleFonts.kadwa(
              color: Color.fromARGB(255, 241, 232, 232),
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28.0,
            bottom: 28,
          ),
          child: Text(
            'Please Login into your existing account',
            style: GoogleFonts.habibi(
              color: Color.fromARGB(255, 241, 232, 232),
              //fontWeight: FontWeight.w100,
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23.0, right: 23),
          child: Container(
              //  width: 300,
              child: Column(
            children: [
              TextField(
                style: GoogleFonts.gabriela(
                    color: Color.fromARGB(255, 176, 237, 232)),
                //keyboardType: TextInputType....,
                controller: emaltext,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: GoogleFonts.gabriela(
                      fontSize: 13.0,
                      color: Color.fromARGB(255, 176, 237, 232)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(23, 255, 182, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  //
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(234, 235, 207, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: const Color.fromARGB(255, 74, 209, 227),
                  ),
                  suffixIcon: IconButton(
                    color: const Color.fromARGB(255, 74, 209, 227),
                    icon: Icon(
                      Icons.supervised_user_circle_sharp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              TextField(
                style: GoogleFonts.gabriela(
                    color: Color.fromARGB(255, 176, 237, 232)),
                controller: pastxt,
                obscureText: true,
                //obscuringCharacter: '^',
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.gabriela(
                      fontSize: 13.0,
                      color: Color.fromARGB(255, 176, 237, 232)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(23, 255, 182, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  //
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(234, 235, 207, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Color.fromARGB(255, 74, 209, 227),
                  ),
                  suffixIcon: IconButton(
                    color: const Color.fromARGB(255, 74, 209, 227),
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23),
                child: SizedBox(
                  height: 23,
                ),
              ),
              SizedBox(
                width: 500,
                height: 54,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: GoogleFonts.gabriela(
                          //instead of TextStyle()
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 105, 240, 226)),
                    onPressed: () {
                      String uemal = emaltext.text.toString();
                      String upas = pastxt.text;
                      print('$uemal + $upas');
                    },
                    child: Text('Login')),
              ),
            ],
          )),
        ),
      ],
    ),
  ),
);

Widget lginup = Center();
