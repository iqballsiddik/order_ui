import 'package:flutter/material.dart';
import 'package:ui_ordering/ui/untilities/style.dart';

class ItemWidget extends StatefulWidget {
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  var _maxWidth;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      _maxWidth = constraint.maxWidth;
      return Container(
        height: screenAwareSize(100, context),
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              color: colorWhite,
              margin: EdgeInsets.only(right: screenAwareSize(80, context)),
              padding: EdgeInsets.only(
                  left: 50.0,
                  right: screenAwareSize(12, context),
                  bottom: screenAwareSize(12, context)),
              child: Row(
                children: <Widget>[
                  Container(
                    width: screenAwareSize(75, context),
                    height: screenAwareSize(75, context),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage("assets/img/sayur.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
