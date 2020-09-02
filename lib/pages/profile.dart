import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class Info {
  String text;

  Info({this.text});
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Info> _info = [
    Info(
      text: "Reviews",
    ),
    Info(
      text: "Photos",
    ),
    Info(
      text: "Edit profile",
    ),
    Info(
      text: "Settings",
    ),
  ];
  List<String> photo = [
    "assets/drawable-hdpi/1.png",
    "assets/drawable-hdpi/2.png",
    "assets/drawable-hdpi/3.png",
    "assets/drawable-hdpi/4.png",
    "assets/drawable-hdpi/5.png",
    "assets/drawable-hdpi/6.png",
    "assets/drawable-hdpi/7.png",
    "assets/drawable-hdpi/8.png",
    "assets/drawable-hdpi/9.png"
  ];

  bool isSwitched = false;

  int index = 0;

  int _selectedIndex = 0;

  bool changeColor = false;

  Widget settings(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Notification',
                ),
                CustomSwitch(
                  activeColor: Colors.lime[800],
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Location',
                ),
                CustomSwitch(
                  activeColor: Colors.lime[800],
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Call',
                ),
                CustomSwitch(
                  activeColor: Colors.lime[800],
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Default Adress',
                  style: TextStyle(
                      color: Colors.lime[600], fontWeight: FontWeight.bold),
                ),
                Text(
                  'change',
                  style: TextStyle(color: Colors.lime[800], fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text('Ensign Estate,20 High St. Wembley, London'),
            Divider(
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget editProfile(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name',
              style: TextStyle(
                  color: Colors.lime[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Kathy Schneider",
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              'Email',
              style: TextStyle(
                  color: Colors.lime[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Kathyschneider@gmail.com",
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                  color: Colors.lime[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "+44 9033976754",
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              'Location',
              style: TextStyle(
                  color: Colors.lime[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Wembley,London",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reviews(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('assets/drawable-hdpi/25.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('US PIZZA ZONE'),
                        Text(
                          '2 days ago',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'asfasfas dfsdf fa fa fa sgsdg sgsg sg  ',
              // style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('assets/drawable-hdpi/25.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('CAFE COFFEE DAY'),
                        Text(
                          '4 days ago',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'asfasfas dfsdf fa fa fa sgsdg sgsg sg  ',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('assets/drawable-hdpi/25.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('US PIZZA ZONE'),
                        Text(
                          '2 days ago',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'asfasfas dfsdf fa fa fa sgsdg sgsg sg  ',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget photos(context) {
    return Container(
        height: MediaQuery.of(context).size.width + 10,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => Image.asset(photo[index]),
          itemCount: 9,
        ));
  }

  toggleContainer(index) {
    if (index == 0) {
      return reviews(context);
    } else if (index == 1) {
      return photos(context);
    } else if (index == 2) {
      return editProfile(context);
    } else {
      return settings(context);
    }
  }

  toggleColor(index) {
    if (index == 0) {
      return Colors.lime[600];
    } else if (index == 1) {
      return Colors.lime[600];
    } else if (index == 2) {
      return Colors.lime[600];
    } else if (index == 3) {
      return Colors.lime[600];
    } else {
      return Colors.lime[600];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width / 1.5,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.lime[800],
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onPressed: () => Navigator.pop(context)),
                                Icon(Icons.menu, color: Colors.white),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 8.0,
                            bottom: 10,
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.photo_camera,
                                        size: 20.0,
                                        color: Colors.lime[700],
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        'Edit',
                                        style:
                                            TextStyle(color: Colors.lime[800]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.width,
                      child: Container(
                        height: 100.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/drawable-hdpi/20.png')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Kathy Schneider',
                style: TextStyle(
                    color: Colors.lime[800],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/drawable-hdpi/location.png'),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    'Wembley,London',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _info.length,
                  itemBuilder: (context, _index) {
                    Info info = _info[_index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          index = _index;
                          _selectedIndex = _index;
                        });
                        return toggleContainer(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 30.0,
                          width: 80.0,
                          color: _selectedIndex == _index
                              ? Colors.lime[600]
                              : Colors.white,
                          child: Center(
                              child: Text(
                            info.text,
                            style: TextStyle(
                              color: _selectedIndex == _index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              toggleContainer(index),
            ],
          ),
        ),
      ),
    );
  }
}
