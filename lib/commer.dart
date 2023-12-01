import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ECommerceHomePage extends StatelessWidget {
  final List<String> productImages = [
    'https://example.com/product1.jpg',
    'https://example.com/product2.jpg',
    'https://example.com/product3.jpg',
    'https://example.com/product4.jpg',
    'https://example.com/product5.jpg',
  ];

  final List<String> productNames = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Home Page'),
      ),
      body: Column(
        children: <Widget>[
          // CarouselSlider for product images
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
            ),
            items: productImages.map((image) {
              return Image.network(image, fit: BoxFit.cover);
            }).toList(),
          ),
          // ListView with circular avatars and product names
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(productImages[index]),
                  ),
                  title: Text(productNames[index]),
                );
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_cart),
      //         label: 'Cart',
      //         backgroundColor: Colors.black),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favorites',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
