import 'package:app2/pages/categories_list.dart';
import 'package:app2/pages/helpcenter.dart';
import 'package:app2/pages/home.dart';
import 'package:app2/pages/orderdetails.dart';
import 'package:app2/pages/orderhistory.dart';
import 'package:app2/pages/payment.dart';
import 'package:app2/pages/product.dart';
import 'package:app2/pages/profile.dart';
import 'package:app2/pages/store.dart';
import 'package:app2/pages/search.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'global.dart';
import 'pages/cart.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

//!  *******************   Text Field *******************************

// Material(
//         elevation: 5.0,
//         borderRadius: BorderRadius.circular(30.0),
//         child: TextField(
//           decoration: InputDecoration(
//             suffixIcon: Image.asset("assets/drawable-hdpi/search-engine-1.png"),
//             hintStyle: TextStyle(color: Colors.grey),
//             enabledBorder: InputBorder.none,
//             disabledBorder: InputBorder.none,

//             hintText: "Search for Shop, Categories, Pincode...",
//             // style:
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//           ),
//         ),
//       ),

//!  * *************    For Sellong  **********************

//  Card(
//         elevation: 10,
//         child: Container(
//           height: width / 1.7,
//           width: width / 2.2,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 height: width / 4,
//                 width: width / 5,
//                 child:
//                     Image.asset('assets/drawable-hdpi/1200px-QFC_logo.svg.png'),
//               ),
//               Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Container(
//                     width: width / 2.5,
//                     height: 50,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Center(
//                           child: Text(
//                         "Lakewood Organic Pure Pink Grape...",
//                         style: TextStyle(fontSize: 16),
//                       )),
//                     ),
//                   )),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 // padding: const EdgeInsets.all(8.0),
//                 child: Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text("100 ml", style: TextStyle(fontSize: 11))),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: 16.0,
//                       width: 16.0,
//                       color: Colors.black,
//                       child: Center(
//                           child: Text(
//                         '-',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       )),
//                     ),
//                     Container(
//                         height: 16, width: 16, child: Center(child: Text('0'))),
//                     Container(
//                       height: 16.0,
//                       width: 16.0,
//                       color: Colors.black,
//                       child: Center(
//                           child: Text(
//                         '+',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       )),
//                     ),
//                     Expanded(
//                       child: Container(),
//                     ),
//                     Text(
//                       '\$15.50',
//                       style: TextStyle(color: Colors.green),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),

//!   ********************    For Category   ************************************

// Card(
//           elevation: 10,
//           child: Container(
//             height: width / 1.7,
//             width: width / 2.2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
// Container(
//   height: width / 2.5,
//   width: width / 3,
//                   child: Image.asset(
//                       "assets/drawable-hdpi/orange-orange-png-image-purepng-free-transparent-cc0-png-orange-fruit-png-1222_1061.png"),
//                 ),
//                 Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Container(
//                       width: width / 2.5,
//                       height: 50,
//                       child: Center(
//                           child: Text(
//                         "Produce",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 18),
//                       )),
//                     )),
//               ],
//             ),
//           ),
//         ),

//!  * ************************   Trendign near you  ************************
// Card(
//           elevation: 10,
//           child: Container(
//             height: width / 1.7,
//             width: width / 2.2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: width / 4,
//                   width: width / 5,
//                   child: Image.asset(
//                       "assets/drawable-hdpi/91CPdKuizwL-removebg-preview.png"),
//                 ),
// Align(
//     alignment: Alignment.bottomLeft,
//     child: Container(
//       width: width / 2.5,
//       height: 50,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 8.0),
//         child: Center(
//             child:
//                 Text("Real Fruit Juice,Litchi, (Pack of 2)")),
//       ),
//     )),
// Padding(
//   padding: const EdgeInsets.only(left: 8.0),
//   // padding: const EdgeInsets.all(8.0),
//   child: Align(
//       alignment: Alignment.bottomLeft,
//       child: Text("!lLtr", style: TextStyle(fontSize: 11))),
// )
//                 // Text()
//               ],
//             ),
//           ),
//         ),

//!  *************  2Km away  ***************************
// Card(
//           elevation: 10,
//           child: Container(
//             height: width / 1.7,
//             width: width / 2.2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: Container(
//                     height: 20,
//                     width: 50,
//                     // color: Colors.green,
//                     child: Image.asset("assets/drawable-hdpi/Group 5245.png"),
//                   ),
//                 ),
//                 Container(
//                   height: width / 4,
//                   width: width / 5,
//                   child: Image.asset(
//                       "assets/drawable-hdpi/82-822554_authorized-retailers-safeway-app-logo-clipart.png"),
//                 ),
//                 Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Container(
//                       width: width / 2.5,
//                       height: 50,
//                       child: Center(
//                           child: Text(
//                         "New Sessions Market",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 18),
//                       )),
//                     )),
//                 Text("Organic . Groceries", style: TextStyle(fontSize: 11)),
//                 Row(
//                   children: [
//                     Expanded(child: Container()),
//                     Icon(
//                       Icons.location_off,
//                       color: Colors.green[200],
//                       size: 12,
//                     ),
//                     Text("  2km Away", style: TextStyle(fontSize: 11)),
//                     Expanded(child: Container()),
//                   ],
//                 )
//                 // Text()
//               ],
//             ),
//           ),
//         ),

//!  *******************   Green Line  *************

// Container(
//         height: width / 3,
//         width: width,
//         color: Colors.green[200],
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.asset(
//                 "assets/drawable-hdpi/1280px-New_Seasons_Market_logo.svg.png"),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Upto \$5 off",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "Buy with us",
//                   style: TextStyle(fontSize: 15),
//                 ),
//               ],
//             )
//           ],
//         ),
//       )),

//!  *******************   Trending Near YOu   **********************

// Row(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(8),
//           child: Text(
//             "Trending Near You",
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//         Expanded(child: Container()),
//         Padding(
//           padding: EdgeInsets.all(8),
//           child: Text("View More",
//               style: TextStyle(color: Colors.green[200], fontSize: 15)),
//         ),
//         Icon(
//           Icons.arrow_right,
//           color: Colors.green[200],
//         )
//       ],
//     ))

//! Store MyApp  ***********************************

// Container(
//               height: 320.0,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(

//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20.0),
//                 image: DecorationImage(
//                   image: AssetImage(
//                     'assets/background.png',
//                   ),
//                   fit: BoxFit.cover,

//                 ),
//               ),
//               child: Stack(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       children: <Widget>[
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Image(
//                               image: AssetImage('assets/profile.png'),
//                             ),
//                             Text(
//                               'Costco',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 22.0),
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Image(
//                                   image: AssetImage(
//                                     'assets/supermarket.png',
//                                   ),
//                                   height: 20.0,
//                                 ),
//                                 Icon(
//                                   Icons.arrow_back_ios,
//                                   color: Colors.white,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Text(
//                           'Shopping in 10019',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(
//                           height: 8.0,
//                         ),
//                         CircleAvatar(
//                           radius: 40.0,
//                           backgroundImage: AssetImage('assets/cake.png'),
//                         ),
//                         SizedBox(
//                           height: 8.0,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Icon(
//                               Icons.access_time,
//                               color: Colors.white,
//                               size: 20.0,
//                             ),
//                             SizedBox(width: 4.0),
//                             Text(
//                               'Today,7am - 8pm',
//                               style: TextStyle(color: Colors.white),
//                             )
//                           ],
//                         ),
//                         Text(
//                           'View pricing policy',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(
//                           height: 15.0,
//                         ),
//                         Material(
//                           elevation: 5.0,
//                           borderRadius: BorderRadius.circular(30.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               suffixIcon: Material(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 elevation: 2.0,
//                                 child: Icon(
//                                   Icons.search,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Search Product...",
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30.0),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
