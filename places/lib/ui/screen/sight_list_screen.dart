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
        title: RichText(
          text: TextSpan(style: appBarTitleStyle, children: [
            buildStyledTitle(appBarTitlePart1, Colors.green),
            buildStyledTitle(appBarTitlePart2, Colors.amberAccent),
          ]),
        ),
        centerTitle: false,
      ),
    );
  }

  InlineSpan buildStyledTitle(String text, Color color) {
    return TextSpan(text: text[0], style: TextStyle(color: color), children: [
      TextSpan(
          text: text.substring(1), style: TextStyle(color: appBarTitleColor))
    ]);
  }
}
