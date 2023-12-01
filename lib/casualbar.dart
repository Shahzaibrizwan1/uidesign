
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class carsual extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJhNhTcdpoN6c-rzLj336_o2WpgLgeqirPchSSBerB&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJhNhTcdpoN6c-rzLj336_o2WpgLgeqirPchSSBerB&s',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 50.0,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}