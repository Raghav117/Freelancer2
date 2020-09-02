import '../global.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Four> four;
  @override
  void initState() {
    four = List();
    four.add(Four("assets/drawable-hdpi/12.png",
        "Lakewood Organic Pure Pink Grape...", "100", "15"));
    four.add(Four("assets/drawable-hdpi/13.png",
        "Essencia Shampoo Essencia Hair Oil", "45", "10.3"));
    four.add(Four("assets/drawable-hdpi/14.png", "Schmitten Luxury Chocolates",
        "79", "23"));
    four.add(Four("assets/drawable-hdpi/15.png", "Good Foods Chunky Guacamo..",
        "28", "54"));
    four.add(Four("assets/drawable-hdpi/16.png",
        "WOW Apple Cider Vinegar Shampoo", "94", "123"));
    four.add(Four("assets/drawable-hdpi/12.png",
        "Lakewood Organic Pure Pink Grape...", "100", "15"));
    four.add(Four("assets/drawable-hdpi/13.png",
        "Essencia Shampoo Essencia Hair Oil", "45", "10.3"));
    four.add(Four("assets/drawable-hdpi/14.png", "Schmitten Luxury Chocolates",
        "79", "23"));
    four.add(Four("assets/drawable-hdpi/15.png", "Good Foods Chunky Guacamo..",
        "28", "54"));
    four.add(Four("assets/drawable-hdpi/16.png",
        "WOW Apple Cider Vinegar Shampoo", "94", "123"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title:
            Text("Schmitten Luxury...", style: TextStyle(color: Colors.green)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        actions: [
          Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/drawable-hdpi/Group 5242.png")),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: width / 3,
                          width: width / 3,
                          child: Image.asset(
                            'assets/drawable-hdpi/17.png',
                            fit: BoxFit.contain,
                          )),
                      Text(
                        'Schmitten Luxury Chocolates',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '70mg',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                                color: Colors.green[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        ''' A chocolate fantasy,like never before,Schmitten has been crafted with immmense care. It'\s not just about the world-class Swiss technology or the consistent taste. It'\s not even about the unmatched quality that every tablet of Schmitten comes with. Its'\s all about the personal touch that each bite,each tablet of your favourite. ''',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //!**********************    For Riview  ***********************************
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 17.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            // color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://miro.medium.com/fit/c/67/67/1*DC8gZl0K0dGDcEHjMjLAFQ.jpeg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.grey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Raghav Garg'),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: 30.0,
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    '''sds sdgsdg sdgsdgsg sdgsdgs dvsdsdgsdgsg sdgsdgsdg sdsdg sgsgsdgsdgsdgsdgsdgsdgsdgsdg bb gsdgsdg rtrbb bcvnn''',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Was this helpful?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green[300],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            height: 30.0,
                                            width: 60,
                                            child: Center(child: Text('Yes')),
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red[200],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            height: 30.0,
                                            width: 60,
                                            child: Center(child: Text('No')),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            // color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.wikibio.us/wp-content/uploads/2019/11/120522-mj-640x426.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.grey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Debra Freeman'),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: 30.0,
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    '''sds sdgsdg sdgsdgsg sdgsdgs dvsdsdgsdgsg sdgsdgsdg sdsdg sgsgsdgsdgsdgsdgsdgsdgsdgsdg bb gsdgsdg rtrbb bcvnn''',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Was this helpful?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green[300],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            height: 30.0,
                                            width: 60,
                                            child: Center(child: Text('Yes')),
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red[200],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            height: 30.0,
                                            width: 60,
                                            child: Center(child: Text('No')),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //!**********************************   View All **********************************
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 50.0,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VIEW ALL 95 REVIEW',
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Featured Products",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("View More",
                          style: TextStyle(
                              color: Colors.green[300], fontSize: 15)),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.green[200],
                    )
                  ],
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: four
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: width / 1.7,
                                width: width / 2.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
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
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Center(
                                                child: Text(
                                              e.heading,
                                              style: TextStyle(fontSize: 16),
                                            )),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      // padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(e.subheading1 + " ml",
                                              style: TextStyle(fontSize: 11))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: 16.0,
                                            width: 16.0,
                                            color: Colors.black,
                                            child: Center(
                                                child: Text(
                                              '-',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          Container(
                                              height: 16,
                                              width: 16,
                                              child: Center(child: Text('0'))),
                                          Container(
                                            height: 16.0,
                                            width: 16.0,
                                            color: Colors.black,
                                            child: Center(
                                                child: Text(
                                              '+',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            '\$' + e.subheading2,
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),

                // Container(
                //   height: width / 1.5,
                //   width: width,
                //   child: ListView.builder(
                //     itemCount: 3,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) => Padding(
                //       padding: const EdgeInsets.only(right: 4.0),
                //       child: Card(
                //         elevation: 10,
                //         child: Container(
                //           height: width / 1.7,
                //           width: width / 2.4,
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Related Items",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("View More",
                          style: TextStyle(
                              color: Colors.green[300], fontSize: 15)),
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
                    children: four
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: width / 1.7,
                                width: width / 2.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
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
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Center(
                                                child: Text(
                                              e.heading,
                                              style: TextStyle(fontSize: 16),
                                            )),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      // padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(e.subheading1 + " ml",
                                              style: TextStyle(fontSize: 11))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: 16.0,
                                            width: 16.0,
                                            color: Colors.black,
                                            child: Center(
                                                child: Text(
                                              '-',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          Container(
                                              height: 16,
                                              width: 16,
                                              child: Center(child: Text('0'))),
                                          Container(
                                            height: 16.0,
                                            width: 16.0,
                                            color: Colors.black,
                                            child: Center(
                                                child: Text(
                                              '+',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            '\$' + e.subheading2,
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
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
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55.0,
              width: width,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Text(
                      'Add In Cart',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 20.0,
                          color: Colors.lightGreen[900],
                          child: Center(
                            child: Text(
                              '−',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 21.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          '3',
                          style: TextStyle(color: Colors.white, fontSize: 19.0),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          color: Colors.lightGreen[900],
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 21.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
