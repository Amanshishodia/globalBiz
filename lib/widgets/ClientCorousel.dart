import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ClientsCarousel extends StatelessWidget {
  final List<String> clientImages = [
    'asset/oyo.png',
    'asset/syx.png',
    'asset/uolo.png',
    'asset/winson.png',
    'asset/zamato.png',
    'asset/startupindia.png',
    'asset/lenskart.png',
    'asset/genrecis.png',
    'asset/bata.png',
    // Add more client images
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,  // Automatically slide through items
        autoPlayInterval: Duration(seconds: 3),  // Interval between slides
        enlargeCenterPage: true,  // Enlarges the current item
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,  // How much of each item is visible
      ),
      items: clientImages.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(

              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagePath),

                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
