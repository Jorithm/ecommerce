import 'package:flutter/material.dart';
import 'package:mamushi/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Dress",
      "picture": "assets/images/ro.jpeg",
      "old price": "8500",
      "new price": "7000"
    },
    {
      "name": "Troussers",
      "picture": "assets/images/pn2.jpeg",
      "old price": "5000",
      "new price": "3500"
    },
    {
      "name": "Street Wear",
      "picture": "assets/images/st2.jpeg",
      "old price": "85000",
      "new price": "70000"
    },
    {
      "name": "Accessory",
      "picture": "assets/images/r.jpeg",
      "old price": "85000",
      "new price": "7000"
    },
    {
      "name": "Shoes",
      "picture": "assets/images/sh1.jpeg",
      "old price": "5000",
      "new price": "3500"
    },
    {
      "name": "Cars",
      "picture": "assets/images/download.jpeg",
      "old price": "5000",
      "new price": "3500"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleProd(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['old price'],
            prodPrice: productList[index]['new price'],
          ),
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final String? prodName;
  final String? prodPicture;
  final String? prodOldPrice;
  final String? prodPrice;

  const SingleProd({
    super.key,
    this.prodName,
    this.prodPicture,
    this.prodOldPrice,
    this.prodPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName ?? 'defaultTag',
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                productDetailName: prodName,
                productDetailNewPrice: prodPrice,
                productDetailOldPrice: prodOldPrice,
                productDetailPicture: prodPicture,
              ),
            )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prodName ?? 'Product',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Text('${prodPrice ?? '0'} XAF'),
                ),
              ),
              child: Image.asset(
                prodPicture ?? 'assets/images/in.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text('Image not found'),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
