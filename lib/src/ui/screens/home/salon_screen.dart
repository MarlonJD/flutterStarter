import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:getwidget/getwidget.dart';

class SalonWidget extends StatefulWidget {
  SalonWidget({Key key}) : super(key: key);

  @override
  _SalonWidgetState createState() => _SalonWidgetState();
}

class _SalonWidgetState extends State<SalonWidget> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return CustomScrollView(primary: false, slivers: <Widget>[
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Center(
                child: Text("Starter Text Item"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Center(
                child: Text("Starter Text Item"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Center(
                child: Text("Starter Text Item"),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
