import 'package:app2/pages/helpcenter.dart';
import 'package:app2/pages/invite.dart';
import 'package:app2/pages/orderhistory.dart';
import 'package:app2/pages/payment.dart';
import 'package:app2/pages/profile.dart';
import 'package:app2/pages/promocode.dart';
import 'package:app2/pages/store.dart';
import '../global.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<First> first;
  List<Second> second;
  List<Third> third;

  var _scaffoldKey = GlobalKey<ScaffoldState>();
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
        key: _scaffoldKey,
        drawer: Drawer(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.mode_edit,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Container(
                        height: 120.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          // color: Colors.red,

                          image: DecorationImage(
                            image: AssetImage('assets/drawable-hdpi/10.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        'Kathy Schneider',
                        style: TextStyle(
                            color: Colors.lime[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Image(
                            height: 30.0,
                            width: 40.0,
                            image:
                                AssetImage('assets/drawable-hdpi/location.png'),
                          ),
                          Text(
                            'Wembley,London',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ListTile(
                      onTap: () => Navigator.pop(context),
                      leading: Icon(
                        Icons.home,
                        color: Colors.lightGreen[600],
                      ),
                      title: Text('Home',
                          style: TextStyle(color: Colors.lime[600])),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Promocode(
                          iss: true,
                        ),
                      )),
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.lightGreen[600],
                      ),
                      title: Text(
                        'Notification',
                        style: TextStyle(color: Colors.lime[600]),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Payment(),
                      )),
                      leading: Text(
                        '\$',
                        style: TextStyle(
                            color: Colors.lightGreen[600],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        'Payment Method',
                        style: TextStyle(
                          color: Colors.lime[600],
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Promocode(
                          iss: false,
                        ),
                      )),
                      leading: Image(
                        image: AssetImage('assets/drawable-hdpi/11.png'),
                      ),
                      title: Text('Promo Code',
                          style: TextStyle(color: Colors.lime[600])),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Invite(),
                      )),
                      leading: Image(
                        image: AssetImage('assets/drawable-hdpi/11.png'),
                      ),
                      title: Text('Invite Friends',
                          style: TextStyle(color: Colors.lime[600])),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderHistory(),
                      )),
                      leading: Image(
                        image: AssetImage('assets/drawable-hdpi/11.png'),
                      ),
                      title: Text('Order History',
                          style: TextStyle(color: Colors.lime[600])),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HelpCenter(),
                      )),
                      leading: Image(
                        image: AssetImage('assets/drawable-hdpi/11.png'),
                      ),
                      title: Text('Help Center',
                          style: TextStyle(color: Colors.lime[600])),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                color: Colors.lightGreen[600],
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              InkWell(
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => Profile(),
                                )),
                                child: Text('Setting',
                                    style: TextStyle(
                                        color: Colors.lime[600],
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                height: 20.0,
                                image:
                                    AssetImage('assets/drawable-hdpi/11.png'),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text('Logout',
                                  style: TextStyle(
                                      color: Colors.lime[600],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              //!  ***********   For Grocery  *******

              Row(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          child:
                              Image.asset("assets/drawable-hdpi/location.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Grocery"),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Text(
                            "46 Park Avenue 98 Station Road, Wembley London",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                      height: 25,
                      width: 25,
                      child:
                          Image.asset("assets/drawable-hdpi/Group 5242.png")),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Container(
                          height: 25,
                          width: 25,
                          child: Image.asset("assets/drawable-hdpi/menu.png"))),
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
                      hintText: "   Search for Shop, Categories, Pincode...",
                      // style:
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
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
                        builder: (context) => Store(),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("View More",
                          style: TextStyle(
                              color: Colors.green[300], fontSize: 15)),
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
                  children: first
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              height: width / 1.7,
                              width: width / 2.2,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
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
                                          child: Center(child: Text(e.heading)),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    // padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(e.subheading,
                                            style: TextStyle(fontSize: 11))),
                                  )
                                  // Text()
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),

              //!  *****************   Green Line  *****************************

              SizedBox(
                height: 10,
              ),
              Container(
                  height: width / 3,
                  width: width,
                  color: Colors.green[200],
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/drawable-hdpi/5.png", scale: 0.75),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upto \$5 off",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Buy with us",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  )),

              //!  ********************   For Store   *******************************

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Store",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("View More",
                        style:
                            TextStyle(color: Colors.green[300], fontSize: 15)),
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
              // Container(
              //   height: width / 1.5,
              //   width: width,
              //   child: ListView.builder(
              //     itemCount: 3,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) =>
              //     ),
              //   ),
              // ),
              //!  *****************   Green Line  *****************************

              SizedBox(
                height: 10,
              ),

              Container(
                  height: width / 3,
                  width: width,
                  color: Colors.green[200],
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/drawable-hdpi/Group 5115.png",
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get \$50",
                            style: TextStyle(fontSize: 18, color: Colors.green),
                          ),
                          Text(
                            "Invite your friends to shop \non Food Cart",
                            style: TextStyle(fontSize: 12, color: Colors.green),
                          ),
                        ],
                      )
                    ],
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
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("View More",
                        style:
                            TextStyle(color: Colors.green[300], fontSize: 15)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
              // Container(
              //   height: width / 1.5,
              //   width: width,
              //   child: ListView.builder(
              //     itemCount: 3,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) =>
              //     ),
              //   ),
              // ),
            ],
          )),
        ));
  }
}
