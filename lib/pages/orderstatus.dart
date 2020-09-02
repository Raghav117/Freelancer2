import 'package:flutter/material.dart';

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
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
          'ORDER STATUS',
          style:
              TextStyle(color: Colors.lime[600], fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 1.5,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage('assets/drawable-hdpi/12.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Costco Wholesale',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Flexible(
                            child: Text(
                              '8386 West High Noon Street \nBrooklyn,NY 11209',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13.0),
                            ),
                          ),
                          // Text('',
                          //     style: TextStyle(
                          //         color: Colors.grey, fontSize: 14.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 120.0,
                decoration: BoxDecoration(
                  color: Colors.lime[600],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                    child: Text(
                  'VIEW ORDER',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                )),
              ),
            ],
          ),
          ListTile(
            leading: Container(
              height: 13.0,
              width: 13.0,
              decoration: BoxDecoration(
                  color: Colors.lime[600],
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text('Order Confirm'),
          ),
          ListTile(
            leading: Container(
              height: 13.0,
              width: 13.0,
              decoration: BoxDecoration(
                  color: Colors.lime[600],
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text('Grocery is ready at the Store'),
          ),
          ListTile(
            leading: Container(
              height: 13.0,
              width: 13.0,
              decoration: BoxDecoration(
                  color: Colors.lime[600],
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text('Order is out of delivery'),
          ),
          ListTile(
            leading: Container(
              height: 13.0,
              width: 13.0,
              decoration: BoxDecoration(
                  color: Colors.lime[600],
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text('Order is near your place'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 13.0,
                  width: 13.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              Text('Delivered'),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.lime[600],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'ADD NOTE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
