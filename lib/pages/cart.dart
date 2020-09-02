import 'package:app2/pages/payment.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.lime[600]),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          'CART',
          style: TextStyle(color: Colors.lime[600]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 150,
                    color: Colors.lime[800],
                    child: Center(
                      child: Text(
                        'DELIVERY',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.lime[600])),
                    child: Center(
                      child: Text(
                        'PICKUP',
                        style: TextStyle(color: Colors.lime[600]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/drawable-hdpi/22.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Sara Lee Bakery Sausage Buns'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Bakery & Desserts',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Row(
                          children: <Widget>[
                            Text(
                              '15 oz',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '\$03.50',
                                  style: TextStyle(color: Colors.lime[600]),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Container(
                                  height: 25.0,
                                  width: 60.0,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '–',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text('2'),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        '+',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.1,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/drawable-hdpi/23.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Black Forest Cake with Cherry'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Bakery & Desserts',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 150,

                        // height: 150,
                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '15 oz',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '\$09.549',
                                  style: TextStyle(color: Colors.lime[600]),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Container(
                                  height: 25.0,
                                  width: 60.0,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '–',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text('1'),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        '+',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.1,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/drawable-hdpi/24.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Lactaid Reduced Fat Milk'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Bakery & Desserts',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Row(
                          children: <Widget>[
                            Text(
                              '15 oz',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '\$09.549',
                                  style: TextStyle(color: Colors.lime[600]),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Container(
                                  height: 25.0,
                                  width: 60.0,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '–',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text('1'),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        '+',
                                        style:
                                            TextStyle(color: Colors.lime[600]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.1,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/drawable-hdpi/22.png'),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'APPLY COUPON',
                        style: TextStyle(color: Colors.lime[800]),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.lime[800],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Bill Details'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total Payable'),
                  Text('\$42.99'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Store Charges'),
                  Text('\$01.00'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total Discount',
                    style: TextStyle(color: Colors.lime[800]),
                  ),
                  Text(
                    '\-\$12.00',
                    style: TextStyle(color: Colors.lime[800]),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Delivery Fee'),
                  Text('\$02.00'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Cancellation Fee'),
                  Text('\$0.5.00'),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'To Pay',
                    style: TextStyle(color: Colors.lime[800]),
                  ),
                  Text('\$42.99'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                color: Colors.grey,
                strokeWidth: 2,
                child: Container(
                  color: Colors.lime[600],
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'You have saved \$12 on the bill',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select Address"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/drawable-hdpi/location.png",
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 120,
                            // color: Colors.green,
                            child: Text(
                              "Ensign Trading Estate, Arterial Rd, Purfleet,20 High St, Wembley London",
                              style: TextStyle(fontSize: 11),
                            )),
                        Container(
                          child: Text(
                            "Change Address",
                            style: TextStyle(
                                color: Colors.lime[600], fontSize: 10),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Image.asset(
                  "assets/drawable-hdpi/Map.png",
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Payment(),
              )),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.lime[600],
                child: Center(
                  child: Text("SELECT PAYMENT METHOD",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
