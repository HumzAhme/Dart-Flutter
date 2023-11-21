import 'dart:io';
import 'package:flutter/material.dart';

//container is a layout storing multiple childs in it. container has 1 child but that child has multiple children.
//contains multiple contents. main design as per set of designs can be caegorized to different containers.
//

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
var arrNm=['jany','raghi','ram'];


    return MaterialApp(
      title: 'Flutter layout',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:    Container(
          //height:50, aligns to that of containers' body if not specified.

          child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //divides the distance in equal size
              //MainAxisAlignment.spaceAround //half of actual padding is alloted on both sides
              //MainAxisAlignment.spaceBetween //no sapce padding at the sides.
              //MainAxisAlignment.start   MainAxisAlignment.end  MainAxisAlignment.center
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, //stretchable component stretches to full available space
              children: <Widget>[
                //<Text> or <Widget> defines which type of widget can be alloted, if not written, any can be added.
                Text(
                  'A',
                  style: TextStyle(fontSize: 25),
                ),
                Text('B'),
              ]),
        ),
        //body->center->child->inkwell->child->container->center->text
        // body: ListView(
        //   children: [
        //     Image.network(
        //       'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg',
        //       width: 600,
        //       height: 240,
        //       fit: BoxFit.cover,
        //     ),
        //     titleSection,
        //     buttonSection,
        //     textSection,
        //   ],
        // ),
    ListView.builder(
      itemCount: arrNm.length,
      itemExtent:100,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Text(arrNm[index], style: TextStyle(fontSize:21,fontWeight:FontWeight.w500),);
      },
    ),

//
//
//

        ListView.separated(
   
      itemBuilder: (BuildContext context, int index) {
        return Row(children: [
          Text(arrNm[index], style: TextStyle(fontSize:21,fontWeight:FontWeight.w500),);
          Text(arrNm[index], style: TextStyle(fontSize:21,fontWeight:FontWeight.w500),);

        ],)
      },
         itemCount: arrNm.length,
      //itemExtent:100, cant be given not an option like builder
      separatorBuilder: (context, index){
return Divider(height:100,thickness: 2,);
      },//must
     // scrollDirection: Axis.horizontal,
    ),
//
//
//

      ),
    );
  }
}





// Widget titleSection = Container(
//   padding: const EdgeInsets.all(32),
//   child: Row(
//     children: [
//       Expanded(
//         /*1*/
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             /*2*/
//             Container(
//               padding: const EdgeInsets.only(bottom: 8),
//               child: const Text(
//                 'Oeschinen Lake Campground',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Text(
//               'Kandersteg, Switzerland',
//               style: TextStyle(
//                 color: Colors.grey[500],
//               ),
//             ),
//           ],
//         ),
//       ),
//       /*3*/
//       Icon(
//         Icons.star,
//         color: Colors.red[500],
//       ),
//       const Text('41'),
//     ],
//   ),
// );

// // Color color = Theme.of(context).primaryColor;
// Color color = Colors.blue;

// Widget buttonSection = Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     _buildButtonColumn(color, Icons.call, 'CALL'),
//     _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//     _buildButtonColumn(color, Icons.share, 'SHARE'),
//   ],
// );

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // ···
//   }

//}

// Column _buildButtonColumn(Color color, IconData icon, String label) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Icon(icon, color: color),
//       Container(
//         margin: const EdgeInsets.only(top: 8),
//         child: Text(
//           label,
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//             color: color,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget textSection = Container(
//   padding: const EdgeInsets.all(32),
//   child: const Text(
//     'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
//     'Alps. Situated 1,578 meters above sea level, it is one of the '
//     'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
//     'half-hour walk through pastures and pine forest, leads you to the '
//     'lake, which warms to 20 degrees Celsius in the summer. Activities '
//     'enjoyed here include rowing, and riding the summer toboggan run.',
//     softWrap: true,
    
    
    // TextButton(//ElevatedButton   OutlinedButton
    //   child: Text('clickhere'),
    //   onPressed: () {
    //     print('object');
    //   },  onLongPress: (){},
    // ),
  //),
//);

body: Padding(
padding: const EdgeInsets.all(8.0),
child: SingleChildScrollView(
  child: Column(//Column
  children:[
    Padding(
    padding: const EdgeInsets.all(8.0),

    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
//
child: Row(
      children: [Container(
        margin: EdgeInsets.only(right: 11),height:200,width: 200,color: Colors.lightGreen,
      )],
    ),
    )
    )//padding
    Container(margin: EdgeInsets.only(bottom: 11),height:200,width: 200,color: Colors.lightGreen,)//container
  ]
),
)//
)//padding
