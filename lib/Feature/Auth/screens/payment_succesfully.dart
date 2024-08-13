import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';

class PaymentSuccesfully extends StatefulWidget {
  const PaymentSuccesfully({super.key});

  @override
  State<PaymentSuccesfully> createState() => _PaymentSuccesfullyState();
}

class _PaymentSuccesfullyState extends State<PaymentSuccesfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.liteorange,
        body: Column(children: [
          Container(
              height: h * 1,

              child: Column(children: [
                SizedBox(
                  height: h * 0.06,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: w * 0.03,
                    ),
                    SvgPicture.asset(
                      ImageConst.Arrow,
                      width: w * 0.07,
                    ),
                    SizedBox(
                      width: w * 0.25,
                    )
                  ],
                ),

                Container(
                  height: h*0.15,
                  width: w*0.45,
                  // color:  ColorConst.red,
                ),

                SvgPicture.asset(ImageConst.PaymentSuccesfully),
                SizedBox(height: h*0.03,),
                Text("Your order has been\n successfully placed",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 25
                ),),
                SizedBox(height: h*0.03,),
                Text("Sit and relax while your orders is being \nworked on . It’ll take 5min before you get it",style: TextStyle(

                ),)

              ]))
        ]));
  }
}
