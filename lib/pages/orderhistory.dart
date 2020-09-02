import 'package:app2/pages/orderdetails.dart';
import 'package:app2/pages/orderstatus.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.lime[600]),
              onPressed: () => Navigator.pop(context)),
          title: Text(
            'ORDER HISTORY',
            style:
                TextStyle(color: Colors.lime[600], fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Order",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 4.0,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width - 10,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Delivered',
                                  style: TextStyle(
                                    color: Colors.lime[600],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 80.0,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                          // color: Colors.green,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/drawable-hdpi/12.png'),
                                            fit: BoxFit.contain,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Costco Wholesale',
                                            style: TextStyle(),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            '8386 West High Noon Street',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Brooklyn,NY 11209',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 2.0,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'ORDERED ON',
                                style: TextStyle(fontSize: 15.0),
                              ),
                              Text(
                                '01 Jun 2020 at 12:24 pm',
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'TOTAL AMOUNT',
                              ),
                              Text(
                                '\$95.99',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'View Order Detail',
                                    style: TextStyle(
                                      color: Colors.lime[600],
                                    ),
                                  ),
                                  Text(
                                    'Repeat Order',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Past Order",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 4.0,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width - 10,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => OrderStatus(),
                                  )),
                                  child: Text(
                                    'On the way',
                                    style: TextStyle(
                                      color: Colors.lime[600],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 80.0,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                          // color: Colors.green,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/drawable-hdpi/12.png'),
                                            fit: BoxFit.contain,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Costco Wholesale',
                                            style: TextStyle(),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            '8386 West High Noon Street',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Brooklyn,NY 11209',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 2.0,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'ORDERED ON',
                                style: TextStyle(fontSize: 15.0),
                              ),
                              Text(
                                '01 Jun 2020 at 12:24 pm',
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'TOTAL AMOUNT',
                              ),
                              Text(
                                '\$95.99',
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => OrderDetails(),
                                    )),
                                    child: Text(
                                      'View Order Detail',
                                      style: TextStyle(
                                        color: Colors.lime[600],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Repeat Order',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
