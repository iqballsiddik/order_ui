import 'package:flutter/material.dart';
import 'package:ui_ordering/model/food_model.dart';
import 'package:ui_ordering/ui/untilities/style.dart';
import 'package:ui_ordering/ui/widget/item_widget.dart';
import './untilities/style.dart';
import 'dart:math' as math;

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var _width;
  var _list = FoodModel.list;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black38,
            ),
            onPressed: () {}),
      ),
      body: Stack(children: <Widget>[
        ListView(physics: BouncingScrollPhysics(), children: <Widget>[
          ..._list.map((data) {
            return ItemWidget();
          }),
          _buildWidgetSummery("Subtotal", 500, context),
          _buildWidgetSummery("Tax", 400, context),
          _buildWidgetSummery("Delivery Charges", 900, context),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .15,
                right: MediaQuery.of(context).size.width * .07,
                bottom: 20.0),
            child: Text("Apply Voucher",
                style: TextStyle(
                    color: Colors.orange, fontSize: 16.0, height: 1.8)),
          ),
          _buildWidgetSummery(
            "Bill Mount",
            900,
            context,
            isTotal: true,
          ),
        ]),
        // Text ORDER rotate
        Padding(
          padding: const EdgeInsets.only(left: 7.0, top: 25.0),
          child: Transform.rotate(angle: -math.pi / 2, child: Text("ORDER")),
        ),
      ]),

      /// buttom Nabigator
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: MaterialButton(
          onPressed: () {},
          color: Colors.grey,
          padding: EdgeInsets.all(20.0),
          child: Text(
            "PROCCED TO PAY",
            style: TextStyle(
                color: colorWhite,
                fontSize: 20.0,
                height: 1.8,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetSummery(String title, int mount, context,
      {bool isTotal = false}) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .15,
        right: MediaQuery.of(context).size.width * .15,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text("$title",
                style: TextStyle(
                    color: isTotal ? black87 : black38,
                    fontSize: 16.0,
                    height: 1.8)),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("assets/img/logo-kominfo.png")),
              ),
            ),
            Text("Rp. $mount",
                style: TextStyle(
                    color: isTotal ? black87 : black38,
                    fontSize: 16.0,
                    height: 1.8)),
          ]),
    );
  }
}
