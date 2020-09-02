import 'package:app2/pages/product.dart';

import '../global.dart';
import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
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
      body: SafeArea(
        child: Column(
          children: [
            //!  ************************   For AppBar  **********************************
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_left,
                      color: Colors.green,
                      size: 25,
                    )),
                Expanded(child: Container()),
                Text(
                  "TRENDING",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                Expanded(child: Container()),
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/drawable-hdpi/Group 5242.png")),
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/drawable-hdpi/equalizer.png")),
              ],
            ),

            //!  ************************   For 2D ListView  **********************************

            SizedBox(
              height: 20,
            ),

            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: four.map((e) {
                    int index = four.indexOf(e);
                    return (index % 2 == 0)
                        ? Row(
                            children: [
                              InkWell(
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => Product(),
                                )),
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      height: width / 1.7,
                                      width: width / 2.2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Center(
                                                      child: Text(
                                                    e.heading,
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )),
                                                ),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            // padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(e.subheading1,
                                                    style: TextStyle(
                                                        fontSize: 11))),
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
                                                    child: Center(
                                                        child: Text('0'))),
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
                                                  '\$ ${e.subheading2}',
                                                  style: TextStyle(
                                                      color: Colors.green),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              index + 1 < four.length
                                  ? Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Card(
                                        elevation: 10,
                                        child: Container(
                                          height: width / 1.7,
                                          width: width / 2.2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                height: width / 4,
                                                width: width / 5,
                                                child: Image.asset(
                                                    four[index + 1].url),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                    width: width / 2.5,
                                                    height: 50,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Center(
                                                          child: Text(
                                                        four[index + 1].heading,
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      )),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                // padding: const EdgeInsets.all(8.0),
                                                child: Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                        four[index + 1]
                                                            .subheading1,
                                                        style: TextStyle(
                                                            fontSize: 11))),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
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
                                                        child: Center(
                                                            child: Text('0'))),
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
                                                      '\$${four[index + 1].subheading2}',
                                                      style: TextStyle(
                                                          color: Colors.green),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          )
                        : Container();
                  }).toList(),
                ),
              ),
            ),

            // Flexible(
            //     child: GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //   ),
            //   itemBuilder: (context, index) =>
            // )),
          ],
        ),
      ),
    );
  }
}
