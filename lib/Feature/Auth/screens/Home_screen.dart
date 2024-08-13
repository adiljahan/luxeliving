import 'package:flutter/material.dart';
import 'package:luxe_living/Feature/Auth/screens/openpage.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';
import 'loginpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.orangeconst,
        body: Column(
          children: [
            Container(
              height: h * 0.10,
              width: w * 8,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FurniHub",
                    style:
                        TextStyle(fontSize: 25, color: ColorConst.whiteconst),
                  ),
                ],
              ),
            ),
            Row(
              children: [Image.asset(ImageConst.shofa1, width: w * 0.70,)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Elevate Your Space, Discover\n Endless Comfort",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),

                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => openpage(),));
                setState(() {

                });
              },
              child: Container(
                margin: EdgeInsets.only(left: w*0.54),

                height: h * 0.06,
                width: w * 0.22,

                child: Icon(Icons.arrow_forward_ios_sharp),
                decoration: BoxDecoration(
                  color: ColorConst.lightorange,
                  // borderRadius: BorderRadius.circular(w * 0.18),
                  borderRadius: BorderRadius.circular(w*0.03)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
