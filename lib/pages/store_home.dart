import 'package:app2/pages/categories_list.dart';
import 'package:app2/pages/category.dart';
import 'package:app2/pages/trending.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class StoreHome extends StatefulWidget {
  @override
  _StoreHomeState createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  List<First> first;
  List<Second> second;
  List<Third> third;

  @override
  void initState() {
    first = List();
    second = List();
    third = List();
    first.add(First("assets/drawable-hdpi/2.png",
        "Happilo Premium Int. Mix Berries", "200g"));
    first.add(First("assets/drawable-hdpi/3.png",
        "Happilo PremiumInt. Mix Berries", "350g"));
    first.add(First("assets/drawable-hdpi/1.png",
        "Real Fruit Juice,Litchi, (Pack of 2)", "1Ltr"));

    second.add(Second("assets/drawable-hdpi/4.png", "New Market Session",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/5.png", "Safe Way",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/6.png", "Quality food Center",
        "Organic . Groceries", "2km Away"));
    third.add(Third("assets/drawable-hdpi/7.png", "Alcohol"));
    third.add(Third("assets/drawable-hdpi/8.png", "Produce"));
    third.add(Third("assets/drawable-hdpi/9.png", "Meat and Seafood"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(
                  'assets/drawable-hdpi/UaBq5LGpJQd3DDo6ve2dFW.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'assets/drawable-hdpi/valerie-elash-Z-2.png',
                            alignment: Alignment.centerLeft,
                          ),
                          Text(
                            'Costco',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  'assets/drawable-hdpi/supermarket-1.png',
                                ),
                                height: 20.0,
                              ),
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Shopping in 10019',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        color: Colors.transparent,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/drawable-hdpi/12.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Today,7am - 8pm',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        'View pricing policy',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Image.asset(
                              "assets/drawable-hdpi/search-engine-1.png",
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "   Search for Product...",
                            // style:
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[200],
              ),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.screen_lock_portrait,
                      color: Colors.green,
                    ),
                    radius: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Coupon Saving", style: TextStyle(fontSize: 15)),
                      Text("Upto 40% off\nEverday Essentials",
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          //! ************* For Trending Near You  ************************

          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Trending Near You",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Trending(),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("View More",
                      style: TextStyle(color: Colors.green[300], fontSize: 15)),
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.green[200],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: second
                    .map(
                      (e) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Card(
                              elevation: 10,
                              child: Container(
                                height: width / 1.7,
                                width: width / 2.2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 20,
                                        width: 50,
                                        // color: Colors.green,
                                        child: Image.asset(
                                            "assets/drawable-hdpi/Group 5245.png"),
                                      ),
                                    ),
                                    Container(
                                      height: width / 4,
                                      width: width / 5,
                                      child: Image.asset(e.url),
                                    ),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          width: width / 2.5,
                                          height: 50,
                                          child: Center(
                                              child: Text(
                                            e.heading,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 18),
                                          )),
                                        )),
                                    Text(e.subheading1,
                                        style: TextStyle(fontSize: 11)),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        Icon(
                                          Icons.location_off,
                                          color: Colors.green[200],
                                          size: 12,
                                        ),
                                        Text("  ${e.subheading2}",
                                            style: TextStyle(fontSize: 11)),
                                        Expanded(child: Container()),
                                      ],
                                    )
                                    // Text()
                                  ],
                                ),
                              ))),
                    )
                    .toList(),
              )),

          //!  ********************   For Category   *******************************

          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Catogories",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Category(),
                )),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("View More",
                      style: TextStyle(color: Colors.green[300], fontSize: 15)),
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.green[200],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: third
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: width / 1.7,
                            width: width / 2.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: width / 2.5,
                                  width: width / 3,
                                  child: Image.asset(e.url),
                                ),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: width / 2.5,
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        e.heading,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 18),
                                      )),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),

          // //! ************* For Trending Near You  ************************

          // SizedBox(
          //   height: 15,
          // ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.all(8),
          //       child: Text(
          //         "Trending Near You",
          //         style: TextStyle(fontSize: 18),
          //       ),
          //     ),
          //     Expanded(child: Container()),
          //     Padding(
          //       padding: EdgeInsets.all(8),
          //       child: Text("View More",
          //           style: TextStyle(color: Colors.green[300], fontSize: 15)),
          //     ),
          //     Icon(
          //       Icons.arrow_right,
          //       color: Colors.green[200],
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 15,
          // ),
          // Container(
          //   height: width / 1.5,
          //   width: width,
          //   child: ListView.builder(
          //     itemCount: 3,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => Padding(
          //       padding: const EdgeInsets.only(right: 8.0),
          //       child: Card(
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
          //                 child: Image.asset(
          //                     'assets/drawable-hdpi/1200px-QFC_logo.svg.png'),
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
          //                     child: Text("100 ml",
          //                         style: TextStyle(fontSize: 11))),
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
          //                         height: 16,
          //                         width: 16,
          //                         child: Center(child: Text('0'))),
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
          //     ),
          //   ),
          // ),

          // //!  ********************   For Category   *******************************

          // SizedBox(
          //   height: 15,
          // ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.all(8),
          //       child: Text(
          //         "Category",
          //         style: TextStyle(fontSize: 18),
          //       ),
          //     ),
          //     Expanded(child: Container()),
          //     Padding(
          //       padding: EdgeInsets.all(8),
          //       child: Text("View More",
          //           style: TextStyle(color: Colors.green[300], fontSize: 15)),
          //     ),
          //     Icon(
          //       Icons.arrow_right,
          //       color: Colors.green[200],
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 15,
          // ),
          // Container(
          //   height: width / 1.5,
          //   width: width,
          //   child: ListView.builder(
          //     itemCount: 3,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => Padding(
          //       padding: const EdgeInsets.only(right: 8.0),
          //       child: Card(
          //         elevation: 10,
          //         child: Container(
          //           height: width / 1.7,
          //           width: width / 2.2,
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Container(
          //                 height: width / 2.5,
          //                 width: width / 3,
          //                 child: Image.asset(
          //                     "assets/drawable-hdpi/orange-orange-png-image-purepng-free-transparent-cc0-png-orange-fruit-png-1222_1061.png"),
          //               ),
          //               Align(
          //                   alignment: Alignment.bottomLeft,
          //                   child: Container(
          //                     width: width / 2.5,
          //                     height: 50,
          //                     child: Center(
          //                         child: Text(
          //                       "Produce",
          //                       textAlign: TextAlign.center,
          //                       style: TextStyle(fontSize: 18),
          //                     )),
          //                   )),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
