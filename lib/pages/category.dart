import 'package:app2/pages/categories_list.dart';
import 'package:app2/pages/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../global.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Third> third;
  @override
  void initState() {
    third = List();

    third.add(Third("assets/drawable-hdpi/7.png", "Alcohol"));
    third.add(Third("assets/drawable-hdpi/8.png", "Produce"));
    third.add(Third("assets/drawable-hdpi/9.png", "Meat and Seafood"));

    third.add(Third("assets/drawable-hdpi/7.png", "Alcohol"));
    third.add(Third("assets/drawable-hdpi/8.png", "Produce"));
    third.add(Third("assets/drawable-hdpi/9.png", "Meat and Seafood"));

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
                Text("CATEGORY",
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
                  children: third.map((e) {
                    int index = third.indexOf(e);
                    return (index % 2 == 0)
                        ? InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoriesList(),
                            )),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
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
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                index + 1 < third.length
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
                                                Container(
                                                  height: width / 2.5,
                                                  width: width / 3,
                                                  child: Image.asset(
                                                      third[index + 1].url),
                                                ),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                      width: width / 2.5,
                                                      height: 50,
                                                      child: Center(
                                                          child: Text(
                                                        third[index + 1]
                                                            .heading,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      )),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
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
