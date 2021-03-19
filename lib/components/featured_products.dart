import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_buy/models/product.dart';
import 'package:easy_buy/pages/users/details.dart';
import 'package:flutter/material.dart';

import 'item_card.dart';

class FeaturedProducts extends StatefulWidget {
  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blueGrey[300],
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text('Produits en vedette'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .35,
            width: double.infinity,
            child: CarouselSlider(
              items: imageSliders(p_products),
              options: CarouselOptions(
                autoPlay: true,
                // scrollDirection: Axis.vertical,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                // onPageChanged: (index, reason) {
                //   setState(() {
                //     _current = index;
                //   });
                // },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> imageSliders(List<Product> products) {
    // return products
    //     .map<Widget>(
    //       (Product product) => Container(
    //         child: Container(
    //           margin: EdgeInsets.all(5.0),
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.all(Radius.circular(5.0)),
    //             child: Stack(
    //               children: <Widget>[
    //                 Image.asset(
    //                   product.image,
    //                   fit: BoxFit.cover,
    //                   width: 1000.0,
    //                 ),
    //                 Positioned(
    //                   bottom: 0.0,
    //                   left: 0.0,
    //                   right: 0.0,
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       gradient: LinearGradient(
    //                         colors: [
    //                           Color.fromARGB(200, 0, 0, 0),
    //                           Color.fromARGB(0, 0, 0, 0)
    //                         ],
    //                         begin: Alignment.bottomCenter,
    //                         end: Alignment.topCenter,
    //                       ),
    //                     ),
    //                     padding: EdgeInsets.symmetric(
    //                       vertical: 10.0,
    //                       horizontal: 20.0,
    //                     ),
    //                     child: Text(
    //                       '${product.title} - ${product.price} F CFA',
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     )
    //     .toList();

    return products
        .map<Widget>(
          (Product product) => ItemCard(
            product: product,
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(
                  product: product,
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
