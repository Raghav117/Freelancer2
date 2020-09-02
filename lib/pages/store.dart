import 'package:app2/pages/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../global.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List<Second> second;
  @override
  void initState() {
    second = List();

    second.add(Second("assets/drawable-hdpi/4.png", "New Market Session",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/5.png", "Safe Way",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/6.png", "Quality food Center",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/4.png", "New Market Session",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/5.png", "Safe Way",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/6.png", "Quality food Center",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/4.png", "New Market Session",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/5.png", "Safe Way",
        "Organic . Groceries", "2km Away"));
    second.add(Second("assets/drawable-hdpi/6.png", "Quality food Center",
        "Organic . Groceries", "2km Away"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close, color: Colors.green),
                  onPressed: () => Navigator.pop(context),
                ),
                Expanded(child: Container()),
                Text("STORE",
                    style: TextStyle(color: Colors.green, fontSize: 18)),
                Expanded(child: Container()),
              ],
            ),
            //!  ***********************  For TExt Field  ********************
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Material(
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
                    hintText: "Search for Shop, Categories, Pincode...",
                    // style:
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),

            //!  ****************   2D List View   ****************************

            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: second.map((e) {
                    int index = second.indexOf(e);
                    return (index % 2 == 0)
                        ? Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: InkWell(
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => StoreHome(),
                                    )),
                                    child: Card(
                                        elevation: 10,
                                        child: Container(
                                          height: width / 1.7,
                                          width: width / 2.2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                    width: width / 2.5,
                                                    height: 50,
                                                    child: Center(
                                                        child: Text(
                                                      e.heading,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    )),
                                                  )),

                                              Text(e.subheading1,
                                                  style:
                                                      TextStyle(fontSize: 11)),

                                              Row(
                                                children: [
                                                  Expanded(child: Container()),
                                                  Icon(
                                                    Icons.location_off,
                                                    color: Colors.green[200],
                                                    size: 12,
                                                  ),
                                                  Text("  ${e.subheading2}",
                                                      style: TextStyle(
                                                          fontSize: 11)),
                                                  Expanded(child: Container()),
                                                ],
                                              )

                                              // Text()
                                            ],
                                          ),
                                        )),
                                  )),
                              index + 1 < second.length
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Card(
                                          elevation: 10,
                                          child: Container(
                                            height: width / 1.7,
                                            width: width / 2.2,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                      width: width / 2.5,
                                                      height: 50,
                                                      child: Center(
                                                          child: Text(
                                                        second[index + 1]
                                                            .heading,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      )),
                                                    )),

                                                Text(
                                                    second[index + 1]
                                                        .subheading1,
                                                    style: TextStyle(
                                                        fontSize: 11)),

                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Container()),
                                                    Icon(
                                                      Icons.location_off,
                                                      color: Colors.green[200],
                                                      size: 12,
                                                    ),
                                                    Text(
                                                        "  ${second[index + 1].subheading2}",
                                                        style: TextStyle(
                                                            fontSize: 11)),
                                                    Expanded(
                                                        child: Container()),
                                                  ],
                                                )

                                                // Text()
                                              ],
                                            ),
                                          )))
                                  : Container(),
                            ],
                          )
                        : Container();
                  }).toList(),
                ),
              ),
            ),

            // Flexible(
            //   child: GridView.builder(
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //     ),
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
            //               Align(
            //                 alignment: Alignment.topRight,
            //                 child: Container(
            //                   height: 20,
            //                   width: 50,
            //                   // color: Colors.green,
            //                   child: Image.asset(
            //                       "assets/drawable-hdpi/Group 5245.png"),
            //                 ),
            //               ),
            //               Container(
            //                 height: width / 5,
            //                 width: width / 6,
            //                 child: Image.asset(
            //                     "assets/drawable-hdpi/82-822554_authorized-retailers-safeway-app-logo-clipart.png"),
            //               ),
            //               Align(
            //                   alignment: Alignment.bottomLeft,
            //                   child: Container(
            //                     width: width / 2.5,
            //                     height: 40,
            //                     child: Center(
            //                         child: Text(
            //                       "New Sessions Market",
            //                       textAlign: TextAlign.center,
            //                       style: TextStyle(fontSize: 18),
            //                     )),
            //                   )),
            //               Text("Organic . Groceries",
            //                   style: TextStyle(fontSize: 11)),
            //               Row(
            //                 children: [
            //                   Expanded(child: Container()),
            //                   Icon(
            //                     Icons.location_off,
            //                     color: Colors.green[200],
            //                     size: 12,
            //                   ),
            //                   Text("  2km Away",
            //                       style: TextStyle(fontSize: 11)),
            //                   Expanded(child: Container()),
            //                 ],
            //               )
            //               // Text()
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
