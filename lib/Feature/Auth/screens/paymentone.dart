import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luxe_living/Feature/Auth/screens/payment_succesfully.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';

class paymentone extends StatefulWidget {
  const paymentone({super.key});

  @override
  State<paymentone> createState() => _paymentoneState();
}

class _paymentoneState extends State<paymentone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.liteorange,
      body: Column(
        children: [
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
                    ),
                    // Text(
                    //   "Payment",
                    //   style: TextStyle(fontSize: 25),
                    // )

                    // Image.asset(ImageConst.Arrow1,width: w*0.08,),

                    // Image.asset(ImageConst.orangelove1,width: w*0.07,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(w*0.09),
                  height: h * 0.04,
                  width: w * 0.89,
                  // color: Colors.red,
                  child: Text("Payment",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),


                ),
                Row(
                  children: [
                    SizedBox(
                      width: w * 0.1,
                    ),
                    Text(
                      "Card details",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: w * 0.14,
                  width: w * 0.88,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.05,
                        bottom: w * 0.01,
                        top: w * 0.04,
                        right: w * 0.03),
                    child: Text(
                      "Enter card details",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: ColorConst.greyConst),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConst.whiteconst,
                    borderRadius: BorderRadius.circular(w * 0.05),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(

                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w*0.05,),
                    Container(

                      // height: h*0.04,
                      // width: w*0.22,
                      // color: Colors.red,
                      // margin: EdgeInsets.only(right: w*0.01),
                      // color: Colors.red,
                      child: Text(
                        "Exp data",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(width: w*0.35,),
                    Container(
                      // height: h*0.03,
                      // width: w*0.13,
                      // color: Colors.red,
                      margin: EdgeInsets.only(right: h*0.03),
                      // color: Colors.red,
                      child: Text(
                        "CVV",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: h*0.01,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                  children: [
                    Container(
                      margin: EdgeInsets.only(top: w*0.03,left:w*0.02),
                      height: w * 0.14,
                      width: w * 0.42,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: w * 0.05,
                            bottom: w * 0.01,
                            top: w * 0.04,
                            right: w * 0.03),
                        child: Text(
                          "DD/MM",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: ColorConst.greyConst),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConst.whiteconst,
                        borderRadius: BorderRadius.circular(w * 0.05),
                      ),
                    ),
                    SizedBox(width: w*0.09,),
                    Container(
                      height: w * 0.14,
                      width: w * 0.42,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: w * 0.05,
                            bottom: w * 0.01,
                            top: w * 0.04,
                            right: w * 0.03),
                        child: Text(
                          "DD/MM",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: ColorConst.greyConst),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConst.whiteconst,
                        borderRadius: BorderRadius.circular(w * 0.05),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: h*0.27,
                  width: w*0.45,
                 color:  ColorConst.liteorange,
                ),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentSuccesfully(),));
                },
                  child: Container(
                    height: w * 0.12,
                    width: w * 0.75,
                    child: Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: ColorConst.whiteconst),
                        )),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(w * 0.05),
                    ),
                  ),
                )

              ]))

        ],
      ),
    );
  }
}
