import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                Icon(
                  Icons.arrow_left,
                  color: Colors.green,
                  size: 25,
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Text(
                      "COSTCO",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.green,
                      size: 25,
                    )
                  ],
                ),
                Expanded(child: Container()),
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/drawable-hdpi/Group 5242.png")),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          width: 100,
                          height: 300,
                          child: Column(
                            children: [
                              Text(
                                "Best Match",
                                style: TextStyle(color: Colors.green),
                              ),
                              Text(
                                "Price : Low to High",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Price : High to Low",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Unit Price : Low First",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Unit Price : High First",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/drawable-hdpi/equalizer.png")),
                )
              ],
            ),

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
                    hintText: "   Search for Shop, Categories, Pincode...",
                    // style:
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),

            //!  ************************   For 2D ListView  **********************************
            Flexible(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 8),
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: width / 1.7,
                    width: width / 2.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: width / 4,
                          width: width / 5,
                          child: Image.asset(
                              'assets/drawable-hdpi/1200px-QFC_logo.svg.png'),
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: width / 2.5,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Center(
                                    child: Text(
                                  "Lakewood Organic Pure Pink Grape...",
                                  style: TextStyle(fontSize: 16),
                                )),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          // padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("100 ml",
                                  style: TextStyle(fontSize: 11))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                '\$15.50',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),

            //!**************  Green Line  ***********************

            Container(
                height: 55,
                width: width,
                color: Colors.green,
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
                ))
          ],
        ),
      ),
    );
  }
}
