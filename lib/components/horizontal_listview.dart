import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  height: 100.0, remet comme ca plus tard
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageCategory: 'Shirt',
            imageLocation: 'assets/images/tshirt.jpeg',
          ),
          Category(
            imageCategory: 'Dress',
            imageLocation: 'assets/images/dress.jpeg',
          ),
          Category(
            imageCategory: 'Accessory',
            imageLocation: 'assets/images/accessoire.jpg',
          ),
          Category(
            imageCategory: 'Formal Dress',
            imageLocation: 'assets/images/formal.jpeg',
          ),
          Category(
            imageCategory: 'Informal Dress',
            imageLocation: 'assets/images/st.jpeg',
          ),
          Category(
            imageCategory: 'Jeans',
            imageLocation: 'assets/images/pants.webp',
          ),
          Category(
            imageCategory: 'Shoes',
            imageLocation: 'assets/images/shoes.png',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCategory;

  const Category({
    super.key,
    required this.imageCategory,
    required this.imageLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {
          // Add your onTap functionality here
        },
        child: SizedBox(
          width: 80.0,
          child: Column(
            children: [
              Image.asset(
                imageLocation,
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5.0),
              Text(
                imageCategory,
                style: TextStyle(fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
