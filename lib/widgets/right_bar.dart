import 'package:bmicalculator/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RightBar extends StatefulWidget {
  final double barWidth;

  const RightBar({Key key, @required this.barWidth}) : super(key : key);

  @override
  _RightBarState createState() => _RightBarState();
}

class _RightBarState extends State<RightBar> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
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
