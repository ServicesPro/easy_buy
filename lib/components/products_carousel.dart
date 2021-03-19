import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductsCarousel extends StatefulWidget {
  final List<String> images;

  ProductsCarousel({@required this.images});

  @override
  _ProductsCarouselState createState() => _ProductsCarouselState();
}

class _ProductsCarouselState extends State<ProductsCarousel> {
  // int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      width: double.infinity,
      child: CarouselSlider(
        items: imageSliders(widget.images),
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
    );
  }

  List<Widget> imageSliders(List<String> images) {
    return images
        .map<Widget>(
          (item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'Image N° ${images.indexOf(item) + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
