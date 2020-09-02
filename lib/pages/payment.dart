import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.lime[600]),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          'PAYMENT METHOD',
          style:
              TextStyle(color: Colors.lime[600], fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(children: [
        Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.width / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Total Payable',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$33.99',
                            style: TextStyle(
                                color: Colors.lime[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            child: Image(
                                image:
                                    AssetImage('assets/drawable-hdpi/11.png')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Payment Method',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 35,
                          width: 100,
                          color: Colors.lime[800],
                          child: Center(
                              child: Text(
                            'Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                            ),
                          )),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          color: Colors.lime[600],
                          child: Center(
                              child: Text(
                            'PayPal',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                            ),
                          )),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          color: Colors.lime[600],
                          child: Center(
                              child: Text(
                            'Stripe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                            ),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Card',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Add Card',
                            style: TextStyle(
                                color: Colors.lime[600], fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "xxxx xxxx xxxx 1289",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('CARD NUMBER'),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "4319 5312 0215 1289",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('EXPIRATION DATE'),
                        SizedBox(
                          child: Container(
                            color: Colors.black,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                        ),
                        Text('CVV'),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "09 / 22",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.all(10))),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "*",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.all(10))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('CARD HOLDER\'S NAME '),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "4319 5312 0215 1289",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Pay Local',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Radio(
                          groupValue: null,
                          value: null,
                          onChanged: null,
                          activeColor: Colors.lime[900],
                        ),
                      ],
                    ),
                    Text(
                      'Cash on Delivery',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
        InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 1.25,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.lime[600],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Image.asset(
                              "assets/drawable-hdpi/tick.png",
                            ),
                          ),
                          Text("Congratulations",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                          Text(
                            "Your Payment Successful Received",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Center(
                        child: Text("THANKYOU",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.lime[600],
            child: Center(
              child: Text(
                "PAY \$33.99",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
