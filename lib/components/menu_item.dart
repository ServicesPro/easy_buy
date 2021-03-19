import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  // final IconData iconData;
  final String image;
  // final Color color;
  final String text;
  final Function press;

  MenuItem({
    @required this.image,
    // @required this.color,
    @required this.text,
    @required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 45.0,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
