import 'package:app2/pages/cart.dart';
import 'package:flutter/material.dart';
import '../global.dart';

class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
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
          title: Text("BAKERY & DESSERTS",
              style: TextStyle(color: Colors.lime[600])),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.lime[600],
            ),
          ),
          actions: [
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
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Column(children: [
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

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Bread",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("View More",
                        style:
                            TextStyle(color: Colors.lime[600], fontSize: 15)),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.lime[600],
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
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
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
                                          style: TextStyle(
                                              color: Colors.lime[600]),
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
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Pies & Cakes",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("View More",
                        style:
                            TextStyle(color: Colors.lime[600], fontSize: 15)),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.lime[600],
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
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
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
                                          style: TextStyle(
                                              color: Colors.lime[600]),
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

              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Buns & Rolls",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("View More",
                              style: TextStyle(
                                  color: Colors.lime[600], fontSize: 15)),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.lime[600],
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
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Center(
                                                    child: Text(
                                                  e.heading,
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )),
                                              ),
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          // padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(e.subheading1 + " ml",
                                                  style:
                                                      TextStyle(fontSize: 11))),
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
                                                  child:
                                                      Center(child: Text('0'))),
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
                                                style: TextStyle(
                                                    color: Colors.lime[600]),
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
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              )
            ])),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Cart(),
                )),
                child: Container(
                    height: 55,
                    width: width,
                    color: Colors.lime[600],
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "   VIEW CART    ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          children: [
                            Text(
                              "3 Item   | \$42.99 ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}
