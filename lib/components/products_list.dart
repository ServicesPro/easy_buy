import 'package:easy_buy/models/product.dart';
import 'package:easy_buy/pages/users/details.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
import 'item_card.dart';

class ProductsList extends StatefulWidget {
  final List<Product> products;

  ProductsList({@required this.products});

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: widget.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPadding * .5,
          crossAxisSpacing: kDefaultPadding * .5,
          childAspectRatio: 0.75,
          // childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) => ItemCard(
          product: widget.products[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                product: widget.products[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
