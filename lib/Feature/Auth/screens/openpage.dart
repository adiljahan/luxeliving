import 'package:flutter/material.dart';
import 'package:luxe_living/Feature/Auth/screens/loginpage.dart';
import 'package:luxe_living/Feature/Auth/screens/signup.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';

class openpage extends StatefulWidget {
  const openpage({super.key});

  @override
  State<openpage> createState() => _openpageState();
}

class _openpageState extends State<openpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.orangeconst,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset(
              ImageConst.lamp,
              //width: w * 0.9,
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CRUD',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.08,
                      color: ColorConst.orangeconst),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create, Read, Update ,Delete',
                  style: TextStyle(color: ColorConst.orangeconst),
                )
              ],
            ),
            SizedBox(
              height: h * 0.03,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginpage(),
                      ));
                });
              },
              child: Container(
                height: h * 0.075,
                width: w * 0.7,
                decoration: BoxDecoration(
                    color: ColorConst.whiteconst,
                    borderRadius: BorderRadius.circular(w * 0.08)),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: ColorConst.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.045),
                )),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(),
                      ));
                });
              },
              child: Container(
                height: h * 0.075,
                width: w * 0.7,
                decoration: BoxDecoration(
                    color: ColorConst.whiteconst,
                    borderRadius: BorderRadius.circular(w * 0.08),
                    border: Border.all(width: w * 0.005, color: ColorConst.whiteconst)),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: ColorConst.orangeconst,
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.045),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
