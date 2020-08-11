import 'package:flutter/material.dart';

import 'mydrawer.dart';

class PageNow extends StatefulWidget {
  @override
  _PageNowState createState() => _PageNowState();
}

class _PageNowState extends State<PageNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      //we mentioned drawer here because we wanted to have menu option
      //in page 2 as well because by default it only shows
      //backword arrow in page 2 instead of menu icon
      drawer: MyDrawer(),
      body: Center(
        child: FlutterLogo(
          size: 100.0,
        ),
      ),
    );
  }
}
