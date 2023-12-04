import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

//backbutton
//dialogbox
//buttonstyle
//hardcode padding instead of spacevenly()
//align the text in columns by preallocating space
//iterate 'itr' on each calling of the widget 'productsing'
//why not extracting .jpg links from internet?
//image local: [solved]: WHEN 'Image.Assets()' EXTRACT FROM WIDGET THAT'S MADE OUTSIDE THE 'MaterialApp', 'assets' directory MUSTN'T BE ADDED INSIDE Image.Assets('imagez/jkt.jpg), BUT IF WIDGET IS DIRECTLY CODED INTO THE 'MaterialApp', /assets must be written explicitly 'Image.Assets('assets/imagz/jkt.jpg'). 'assets' named folder must be made to store images folder.
////upp bottom bar

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
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: BackButton,
          //   onPressed: {Text('dsddy')},
          // ), //ElevatedButton(style: RoundSliderThumbShape, ),
          //Padding(padding: EdgeInsets.all(23.3), child: )
          leading: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
            child: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.arrow_back,
              ),

              // AlertDialog(
              //   title: const Text('AlertDialog Title'),
              //   content: Text('This is a demo alert dialog.'),
              // );
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 57, top: 2),
            child: Center(
              // padding: const EdgeInsets.only(left: 300),
              child: const Text(
                'Checkout',
                style: TextStyle(
                    color: Color.fromARGB(255, 63, 52, 83),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          backgroundColor: Color.fromARGB(172, 255, 255, 255),
        ),
        body: ListView(
          children: [
            Divider(
              height: 2,
              thickness: 2.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.8),
              child: Text(
                'Shipping Address',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  //fontFamily: 'georgia',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Icon(Icons.location_city_rounded),
                  onTap: () {
                    //action code when clicked
                    print("The icon is clicked");
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 253,
                      child: Text(
                        'Home',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      '1901, thoringer Cir, thira, Hawaii, 81063',
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {
                    print('objectiv');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 27.0),
                    child: Text(
                      'change',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
                //  style: ButtonStyle(overlayColor: Colors.indigo,),
              ],
            ),
            Divider(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
              child: Text(
                'Choose Shipping Type',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  //fontFamily: 'georgia',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    child: Icon(Icons.forest_sharp),
                    padding: EdgeInsets.all(0),
                  ),
                  onTap: () {
                    //action code when clicked
                    print("The icon is clicked");
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 253,
                      // padding: EdgeInsets.only(left: 2),
                      child: Text(
                        'Economy',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      'Estimated Arrival 35 August, 2023',
                      textAlign: TextAlign.left,
                    )
                  ],
                ),

                TextButton(
                  onPressed: () {
                    print('objectiv');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 27.0),
                    child: Text(
                      'change',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
                //  style: ButtonStyle(overlayColor: Colors.indigo,),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.9, left: 13.7),
              child: Text(
                'Order List',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w900,
                  //fontFamily: 'georgia',
                ),
              ),
            ),
            Row(
              children: [
                Container(
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13,
                    left: 12,
                  ),
                  child: Container(
                    //padding: EdgeInsets.only(left: 13.7,),
                    width: 190,
                    height: 80,
                    color: Colors.white12,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$jkt',
                            //textAlign: TextAlign.end, won't work as space not pre-allocated but done in realtime.
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '$siz',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '$sgn$dlar',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Productsing,
            Productsing,
            Productsing,
            Productsing,
            Productsing,
            Padding(padding: EdgeInsets.only(bottom: 32)),
            BottomNavigationBar(
              // fixedColor: Colors.limeAccent,
              backgroundColor: Colors.amber,
              //onTap: ,
              elevation: 33,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarms_outlined),
                  label: 'cancel',
                  backgroundColor: Colors.redAccent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_filled_sharp),
                  label: 'proceed',
                  backgroundColor: Colors.greenAccent,
                ),
              ],
            ),
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

var itr = 0;
List<String> lnnk = [
  "https://sp1.picnob.com/p/pt2_3771614815225424104529_0_e28ad68df51830a064aa1afd8069e3a9.jpg",
  'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg',
  "Roman",
  "Ali",
  "Abdullah",
  "Ahmed"
];
List<double> dlaar = [25.43, 45.34, 56.33, 43.56, 34.97, 56.57];
List<String> jkkt = [
  'Brown Jacket',
  'blue muffler',
  'grey hat',
  'orange scarf',
  'pink shoes'
];
//List<String> siiz = [];
var dlar = dlaar[itr]; //67.45;
var sgn = '\$';
var lnk = lnnk[itr];
var jkt = jkkt[itr];
var siz = 'Size : XL';
Widget Productsing = Row(
  children: [
    Container(
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
                      'imagz/jkt1.jpg',
                      fit: BoxFit.cover,
                    ) //Image.network(
                    //'$lnk', //https://i.pinimg.com/236x/b5/52/0b/b5520b156b33e9f3094ba307bc9d3904.jpg not working due to CORS
                    //width: 100,
                    //height: 100,
                    //  fit: BoxFit.cover,
                    //),
                    ),
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(
        top: 13,
        left: 12,
      ),
      child: Container(
        //padding: EdgeInsets.only(left: 13.7,),
        width: 190,
        height: 80,
        color: Colors.white12,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$jkt',
                //textAlign: TextAlign.end, won't work as space not pre-allocated but done in realtime.
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                ),
              ),
              Text(
                '$siz',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Text(
                '$sgn$dlar',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
);
