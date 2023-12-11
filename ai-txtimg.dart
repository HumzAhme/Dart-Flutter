import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

//call all widgets in home: not happening: [solved]: call one main widget in home which within itself calls other widgets.
//can only one thing widget like scaffold can be returned in one stl widget? yes.
//text input border increase & text in lines as para. [solved] take Text() instead of textField().

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Interfacen',
      debugShowCheckedModeBanner: false,
      home: BtomNavBar(), //alres(),
    );
  }
}

class alres extends StatelessWidget {
  const alres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 139,
          toolbarHeight: 66,
          leading: Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
            child: Container(
              height: 50,
              width: 68,
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  // borderRadius: BorderRadius.circular(50),
                  ),
              child: Center(
                child: GradientText(
                  'COGNISE',
                  style: GoogleFonts.alegreya(
                      color: Colors.deepOrange,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                  colors: [Colors.deepPurple, Colors.deepOrange],
                ),
              ),

              // AlertDialog(
              //   title: const Text('AlertDialog Title'),
              //   content: Text('This is a demo alert dialog.'),
              // );
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 4, top: 2, left: 146),
            child: Container(
              height: 29,
              width: 54,
//              color: Colors.yellow,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 243, 186, 0),
                      Color.fromARGB(255, 236, 230, 179),
                      Color.fromARGB(255, 243, 186, 0),
                      Color.fromARGB(255, 236, 230, 179),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13.5),
                    topLeft: Radius.circular(13.5),
                    bottomRight: Radius.circular(13.5),
                  )),

              child: Center(
                // padding: const EdgeInsets.only(left: 300),
                child: ButtonTheme(
                  minWidth: 800,
                  child: TextButton(
                    child: Text('PRO'),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: GoogleFonts.daiBannaSil(
                          color: Color.fromARGB(255, 63, 52, 83),
                          fontStyle: FontStyle.normal,
                          fontSize: 17,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                //
                //
                //
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 216, 119)),
      body: ListView(
        children: const [
          Divider(
            height: 2,
            thickness: 0.5,
            color: Colors.white,
          ),
          // BtomNavBar(),
        ],
      ),
    );
  }
}

//
//
class BtomNavBar extends StatelessWidget {
  const BtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        Screen1(),
        Screen2(),
        Screen3(),
        Screen4(),
        Screen5(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.wrap_text), //panorama_photosphere
          title: ("Prompt"),
          activeColorPrimary: Colors.deepPurpleAccent,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.image),
          title: ("Images"), //Items
          activeColorPrimary: Colors.deepPurpleAccent,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.save), //person_off
          title: ("Saved"), //profile
          activeColorPrimary: Colors.deepPurpleAccent,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.workspace_premium), //settings_accessibility
          title: ("Premium"),
          activeColorPrimary: Colors.deepPurpleAccent,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("Settings"), //Exit
          activeColorPrimary: Colors.deepPurpleAccent,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor:
          Color.fromARGB(255, 255, 216, 119), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}

var txt1 = TextEditingController();

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        AppBar(
            leadingWidth: 139,
            toolbarHeight: 66,
            leading: Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
              child: Container(
                height: 50,
                width: 68,
                decoration: const BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    // borderRadius: BorderRadius.circular(50),
                    ),
                child: Center(
                  child: GradientText(
                    'COGNISE',
                    //                  textAlign: TextAlign.end,
                    style: GoogleFonts.alegreya(
                        color: Colors.deepOrange,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                    colors: [Colors.deepPurple, Colors.deepOrange],
                  ),
                ),

                // AlertDialog(
                //   title: const Text('AlertDialog Title'),
                //   content: Text('This is a demo alert dialog.'),
                // );
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(right: 4, top: 2, left: 146),
              child: Container(
                height: 29,
                width: 54,
//              color: Colors.yellow,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 243, 186, 0),
                        Color.fromARGB(255, 236, 230, 179),
                        Color.fromARGB(255, 243, 186, 0),
                        Color.fromARGB(255, 236, 230, 179),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13.5),
                      topLeft: Radius.circular(13.5),
                      bottomRight: Radius.circular(13.5),
                    )),

                child: Center(
                  // padding: const EdgeInsets.only(left: 300),
                  child: ButtonTheme(
                    minWidth: 800,
                    child: TextButton(
                      child: Text('PRO'),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        textStyle: GoogleFonts.daiBannaSil(
                            color: Color.fromARGB(255, 63, 52, 83),
                            fontStyle: FontStyle.normal,
                            fontSize: 17,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  //
                  //
                  //
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 255, 216, 119)),
        //alres(),//cant' put like this, maybe bcz scaffold cant be called twice as within its class, its calling scaffold.
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: const Color.fromARGB(255, 225, 217, 217),
              ),
              width: 346,
              height: 193,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 13.0),
                        child: SizedBox(
                            width: 292,
                            height: 136,
                            child: Text(
                                'fedfeddddddddddddfeffedfeddddddddddddddedfedwedededededededededededyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyddddddddddddddddddddddddddddddddddddddddddddddddddddddddfefddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfef') //TextField(
                            //   style: GoogleFonts.gabriela(
                            //       color: Color.fromARGB(255, 176, 237, 232)),
                            //   controller: txt1,
                            //   obscureText: true,
                            //   //obscuringCharacter: '^',
                            //   decoration: InputDecoration(
                            //     hintText: 'Password',
                            //     hintStyle: GoogleFonts.gabriela(
                            //         fontSize: 13.0,
                            //         color: Color.fromARGB(255, 176, 237, 232)),

                            //     focusedBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             width: 2,
                            //             color: Color.fromRGBO(23, 255, 182, 0.702)),
                            //         borderRadius: BorderRadius.circular(31)),
                            //     //
                            //     enabledBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             width: 1,
                            //             color:
                            //                 Color.fromRGBO(234, 235, 207, 0.702)),
                            //         borderRadius: BorderRadius.circular(31)),
                            //     prefixIcon: Icon(
                            //       Icons.password_sharp,
                            //       color: Color.fromARGB(255, 74, 209, 227),
                            //     ),
                            //     suffixIcon: IconButton(
                            //       color: const Color.fromARGB(255, 74, 209, 227),
                            //       icon: Icon(
                            //         Icons.remove_red_eye_sharp,
                            //       ),
                            //       onPressed: () {},
                            //     ),
                            //   ),
                            // ),
                            ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.cyan,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          '0/150',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 206.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.auto_fix_normal,
                            )),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.voice_chat,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18, right: 15),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  color: const Color.fromARGB(255, 225, 217, 217),
                ),
                width: 89,
                height: 38,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Image'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.image_aspect_ratio,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  color: const Color.fromARGB(255, 225, 217, 217),
                ),
                width: 71,
                height: 38,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.window_outlined,
                    ),
                    Text('1:1'),
                    Icon(Icons.arrow_downward_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.white,
        ),
        Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: const Color.fromARGB(255, 225, 217, 217),
            ),
            width: 346,
            height: 98,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 13.0),
                      child: SizedBox(
                          width: 292,
                          height: 36,
                          child: Text(
                              'jfdjfsdjfsdfjssssdjfsdjsdfddddddddddddcscscsdwdaxwwdwsdwdddssssdsdsdkjjfiowejdijeifjdssssssssssssssssssssssssssddweiojdwioqiojjiji')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.cyan,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        '0/150',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 206.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.auto_fix_normal,
                          )),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.voice_chat,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.white70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 10.8),
          child: Row(
            children: [
              Text(
                'Styles',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16
                    //fontFamily: 'georgia',
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 238.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        // fontStyle: FontStyle.italic
                      ),
                    )),
              )
            ],
          ),
        ),
        // NestedScrollView(headerSliverBuilder:(context, innerBoxIsScrolled) {

        //  },body:       child:
        // ListView.separated(
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       child: const Text('dehd'),
        //     );
        //   },
        //   separatorBuilder: (context, index) {
        //     return const Divider();
        //   },
        //   itemCount: 3,
        //   // children: [
        //   //   // Container(padding: EdgeInsets.all(1), child: Text('fjfhd')),
        //   //   // Container(padding: EdgeInsets.all(1), child: Text('fjfhd')),
        //   //   // Container(padding: EdgeInsets.all(1), child: Text('fjfhd')),
        //   //   // boximag(),
        //   //   // boximag(),
        //   //   // boximag(),
        //   //   // boximag(),
        //   //   // boximag(),
        //   //   // boximag(),
        //   // ],
        // ),
        // ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              boximag(),
              boximag(),
              boximag(),
              boximag(),
            ],
          ),
        ),
      ]),
    );
  }
}

class boximag extends StatelessWidget {
  const boximag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //box-image container twrds right scroll
      padding: EdgeInsets.only(left: 13.7, top: 12.1),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.only(left: 0, top: 0),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 0,
                    top: 0,
                  ),
                  child: Image.asset(
                    'imagz/jkt2.jpg',
                    width: 270,
                    height: 324,
                    fit: BoxFit.cover,
                  ), //Image.network(
                  //'$lnk', //https://i.pinimg.com/236x/b5/52/0b/b5520b156b33e9f3094ba307bc9d3904.jpg not working due to CORS
                  //width: 100,
                  //height: 100,
                  //fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    ); //box-image container twrds right scroll
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen2',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen3',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen4',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen5',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
