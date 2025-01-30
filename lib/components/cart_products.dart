import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({super.key});

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnCart = [
    {
      "name": "Dress",
      "picture": "assets/images/ro.jpeg",
      "price": "7000",
      "size": "L",
      "color": "blue",
      "qty": 2,
    },
    {
      "name": "Troussers",
      "picture": "assets/images/pn2.jpeg",
      "price": "3500",
      "size": "XL",
      "color": "red",
      "qty": 1,
    },
    {
      "name": "Street Wear",
      "picture": "assets/images/st2.jpeg",
      "price": "70000",
      "size": "M",
      "color": "blue",
      "qty": 4,
    },
  ];

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProductName: productsOnCart[index]['name'],
          cartProductColor: productsOnCart[index]['color'],
          cartProductQty: productsOnCart[index]['qty'],
          cartProductSize: productsOnCart[index]['size'],
          cartProductPrice: productsOnCart[index]['price'],
          cartProductPicture: productsOnCart[index]['picture'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQty;

  const SingleCartProduct({
    super.key,
    this.cartProductName,
    this.cartProductPicture,
    this.cartProductPrice,
    this.cartProductColor,
    this.cartProductQty,
    this.cartProductSize,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              cartProductPicture,
              width: 70.0,
              height: 70.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
              width: 16.0), // Add space between the image and the rest
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartProductName),
                Row(
                  children: [
                    const Text('Size: '),
                    Text(
                      cartProductSize,
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                    const SizedBox(width: 20.0),
                    const Text('Color: '),
                    Text(
                      cartProductColor,
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                Text(
                  '$cartProductPrice XAF',
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_up),
                  padding: EdgeInsets.zero,
                ),
                Text(cartProductQty.toString()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
