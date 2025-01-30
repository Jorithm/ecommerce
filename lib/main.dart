import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mamushi/components/horizontal_listview.dart';
import 'package:mamushi/components/products.dart';
import 'package:mamushi/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = SizedBox(
      height: 200.0,
      child: CarouselSlider(
        items: [
          Image.asset('assets/images/ex1.jpeg', fit: BoxFit.cover),
          Image.asset('assets/images/ex.jpeg', fit: BoxFit.cover),
          Image.asset('assets/images/download.jpeg', fit: BoxFit.cover),
        ],
        options: CarouselOptions(
          height: 300.0,
          enlargeCenterPage: true,
          //autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 1500),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VISA',
          style: TextStyle(color: Colors.white, fontSize: 35.0),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('mirai nikki'),
              accountEmail: Text('mn@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('HomePage'),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person_2),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(
                  Icons.shopping_basket_sharp,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(children: [
        imageCarousel,
        Padding(
          padding: EdgeInsets.all(10.0),
          child:
              Container(alignment: Alignment.center, child: Text('Categories')),
        ),
        HorizontalList(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Recent products',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        //   SizedBox(
        //   height: 320.0,
        //  child: Products(),
        //)

        Flexible(
          child: Products(),
        ),
      ]),
    );
  }
}
