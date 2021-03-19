import 'package:easy_buy/components/add_to_cart.dart';
import 'package:easy_buy/components/counter_with_fav_btn.dart';
import 'package:easy_buy/components/description.dart';
import 'package:easy_buy/components/product_tile.dart';
import 'package:easy_buy/models/product.dart';
import 'package:flutter/material.dart';

import '../../helper.dart';

class Details extends StatelessWidget {
  final Product product;

  Details({this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        // ColorAndSize(product: product),
                        // SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        SizedBox(height: kDefaultPadding / 2),
                        CounterWithFavBtn(),
                        SizedBox(height: kDefaultPadding / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitle(product: product),
                  // ShareButton(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
