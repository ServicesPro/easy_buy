import 'package:easy_buy/components/app_banner.dart';
import 'package:easy_buy/components/app_drawer.dart';
import 'package:easy_buy/components/menu_item.dart';
import 'package:easy_buy/components/products_carousel.dart';
import 'package:easy_buy/components/products_list.dart';
import 'package:easy_buy/models/product.dart';
import 'package:flutter/material.dart';

import 'affiliation/affiliation.dart';
import 'products.dart';
import 'profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int photoIndex = 0;

  final List<String> images = [
    'assets/elec/1.jpg',
    'assets/elec/2.jpg',
    'assets/elec/3.jpg',
    'assets/elec/4.jpeg',
    'assets/elec/5.jpg',
    'assets/elec/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Accueil",
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ProductsCarousel(
                images: images,
              ),
              // Container(
              //   // width: double.infinity,
              //   // height: MediaQuery.of(context).size.height * .45,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Center(
              //         child: Stack(
              //           children: <Widget>[
              //             Container(
              //               decoration: BoxDecoration(
              //                 // borderRadius: BorderRadius.circular(25.0),
              //                 image: DecorationImage(
              //                   image: AssetImage(images[photoIndex]),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //               width: double.infinity,
              //               height: MediaQuery.of(context).size.height * .45,
              //             ),
              //             Positioned(
              //               top: 375.0,
              //               left: 25.0,
              //               right: 25.0,
              //               child: SelectedPhoto(
              //                 numberOfDots: images.length,
              //                 photoIndex: photoIndex,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: <Widget>[
              //           // ignore: deprecated_member_use
              //           RaisedButton(
              //             child: Text('Suivant'),
              //             onPressed: _nextImage,
              //             elevation: 5.0,
              //             color: Colors.green,
              //           ),
              //           SizedBox(width: 10.0),
              //           // ignore: deprecated_member_use
              //           RaisedButton(
              //             child: Text('Précédant'),
              //             onPressed: _previousImage,
              //             elevation: 5.0,
              //             color: Colors.blue,
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MenuItem(
                    // iconData: Icons.menu,
                    image: 'assets/icons/products.png',
                    // color: Colors.pink[600],
                    text: "Produits",
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Products(),
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    // iconData: Icons.star,
                    image: 'assets/icons/wish_list.png',
                    // color: Colors.yellow[600],
                    text: "Favoris",
                    press: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => Products(),
                      //   ),
                      // );
                    },
                  ),
                  MenuItem(
                    // iconData: Icons.dashboard,
                    image: 'assets/icons/categories.png',
                    // color: Colors.blue[600],
                    text: "Catégories",
                    press: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => Products(),
                      //   ),
                      // );
                    },
                  ),
                  MenuItem(
                    // iconData: Icons.check_box,
                    image: 'assets/icons/bag.png',
                    // color: Colors.red[600],
                    text: "Vendeur",
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Affiliation(),
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    // iconData: Icons.person,
                    image: 'assets/icons/compte.png',
                    // color: Colors.blue[600],
                    text: "Compte",
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Profile(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                width: double.infinity,
                color: Colors.pink[600],
                child: Center(
                  child: Text(
                    'Les derniers produits ajoutés',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // FeaturedProducts(),
              SizedBox(
                height: 10,
              ),
              ProductsList(
                products: last4Products,
              ),
              SizedBox(
                height: 10.0,
              ),
              AppBanner(),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                width: double.infinity,
                color: Colors.pink[600],
                child: Center(
                  child: Text(
                    'Tous nos produits',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ProductsList(
                products: p_products,
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Products())),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Voir tous les produits',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
