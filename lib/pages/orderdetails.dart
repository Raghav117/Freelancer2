import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
            'ORDER DETAIL',
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
                "Order Summary",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 4.0,
                      child: Flexible(
                        // height: MediaQuery.of(context).size.height / 3,
                        // width: MediaQuery.of(context).size.width - 10,
                        // decoration: BoxDecoration(
                        //   // color: Colors.blue,
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'On the Way',
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
                                'BILL DETAIL',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sara Lee Bakery Sausage Buns',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$03.50 x 2',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Text(
                                    '\$7.00',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sara Lee Bakery Sausage Buns',
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$03.50 x 2',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Text(
                                    '\$7.00',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sara Lee Bakery Sausage Buns',
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$03.50 x 2',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Text(
                                    '\$7.00',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Divider(
                                height: 1.5,
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TOTAL Payable',
                                  ),
                                  Text(
                                    '\$46.49',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promocode (FOODCART)',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                  Text(
                                    '-\$46.49',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.5,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TOTAL ',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                  Text(
                                    '-\$36.49',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.5,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your Total Saving ',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: TextStyle(color: Colors.lime[600]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              )
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
