import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:luxe_living/Feature/Auth/screens/Payment.dart';
import 'package:luxe_living/Feature/Auth/screens/Product_Details.dart';
import 'package:luxe_living/Feature/Auth/screens/favorites.dart';

import '../../../Constance/colorConst.dart';
import 'CartPage.dart';
import 'Profile_page.dart';
import 'main_meanu.dart';

class Bottampage extends StatefulWidget {
  const Bottampage({super.key});

  @override
  State<Bottampage> createState() => _BottampageState();
}

class _BottampageState extends State<Bottampage> {
  List page = [
    mainmanu(),
    favorites(),
    Payment(),
    Cartpage(),
    profile(),
  ];

  List<Widget> As = [
    Icon(
      Icons.home,
      color: ColorConst.orangeconst,
    ),
    Icon(
      Icons.favorite,
      color: ColorConst.orangeconst,
    ),
    Icon(
      Icons.document_scanner,
      color: ColorConst.orangeconst,
      size: 50,
    ),
    Icon(
      Icons.shopping_cart,
      color: ColorConst.orangeconst,
    ),
    Icon(
      Icons.person,
      color: ColorConst.orangeconst,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorConst.whiteconst,
        backgroundColor: ColorConst.liteorange,
        items: As,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
      body: page[selectedIndex],
    );
  }
}
