import 'package:easy_buy/models/product.dart';
import 'package:flutter/material.dart';

import '../helper.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  ItemCard({@required this.product, @required this.press});

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: press,
    //   child: Card(
    //     elevation: 15.0,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Expanded(
    //           child: Container(
    //             // padding: EdgeInsets.all(4),
    //             // For  demo we use fixed height  and width
    //             // Now we dont need them
    //             // height: 180,
    //             // width: 160,
    //             decoration: BoxDecoration(
    //               // color: Colors.blueGrey,
    //               borderRadius: BorderRadius.circular(16),
    //             ),
    //             child: Hero(
    //               tag: "${product.id}",
    //               child: Image.asset(
    //                 product.image,
    //                 fit: BoxFit.contain,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
    //           child: Text(
    //             // products is out demo list
    //             product.title,
    //             style: TextStyle(color: kTextLightColor),
    //           ),
    //         ),
    //         Text(
    //           "${product.price} F CFA",
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         )
    //       ],
    //     ),
    //   ),
    // );

    return InkWell(
      onTap: press,
      child: Card(
        semanticContainer: true,
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Text(
                product.title,
                style: TextStyle(color: kTextLightColor),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "${product.price} F CFA",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
