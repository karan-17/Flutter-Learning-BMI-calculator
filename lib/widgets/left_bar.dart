import 'package:bmicalculator/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LeftBar extends StatefulWidget {
  final double barWidth;

  const LeftBar({Key key, @required this.barWidth}) : super(key : key);

  @override
  _LeftBarState createState() => _LeftBarState();
}

class _LeftBarState extends State<LeftBar> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end ,
      children: [
        GestureDetector(
        onTap: () {
        setState(() {
        selected = !selected;
        });
        },
        child: Center(
        child: AnimatedContainer(
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
          ),
            color: accentHexColor
        ),
        width: selected ? 200.0 : 100.0,
          duration: Duration(seconds: 2),
          curve: Curves.easeInOutCubic,
          )
        )
        )
      ],
    );
  }
}
