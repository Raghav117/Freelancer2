import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Promocode extends StatefulWidget {
  final bool iss;

  const Promocode({Key key, this.iss}) : super(key: key);
  @override
  _PromocodeState createState() => _PromocodeState();
}

class _PromocodeState extends State<Promocode> {
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
          widget.iss == false ? 'PROMOCODE' : "NOTIFICATIONS",
          style: TextStyle(
            color: Colors.lime[600],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 4,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/drawable-hdpi/15.png"),
                    // color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width - 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("   Quality Food Centers"),
                        Text(
                          "   Get 40% OFF up to \$75 on Order.",
                          style: TextStyle(fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DottedBorder(
                                color: Colors.red,
                                borderType: BorderType.Rect,
                                strokeWidth: 1,
                                child: Text(
                                  "FOOD NOW",
                                  style: TextStyle(
                                      fontSize: 14,
                                      backgroundColor: Colors.lime[300]),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "Apply",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 11),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
