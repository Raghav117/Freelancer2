import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Invite extends StatefulWidget {
  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 40.0,
        color: Colors.lime[600],
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          'INVITE YOUR FRIENDS',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        )),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.lime[600]),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          'INVITE FRIENDS',
          style: TextStyle(
            color: Colors.lime[600],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child:
                      Image.asset("assets/drawable-hdpi/Invite Friends.png")),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Invite Friends',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'When your friend install app with your referral code and on order complete,you will both one order free.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Referral Code',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              DottedBorder(
                color: Colors.red,
                strokeWidth: 2,
                child: Container(
                  color: Colors.deepOrange[100],
                  height: 30.0,
                  width: MediaQuery.of(context).size.width - 100.0,
                  child: Center(
                      child: Text(
                    'AFOODLANS1011',
                    style: TextStyle(fontSize: 18.0, letterSpacing: 1.2),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
