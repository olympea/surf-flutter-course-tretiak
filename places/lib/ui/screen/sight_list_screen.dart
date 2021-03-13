import 'package:flutter/material.dart';
import 'package:places/ui/res/res.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 116,//44+72
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          appBarTitle,
          style: appBarTitleStyle,
        ),
        centerTitle: false,
      ),
    );
  }
}
