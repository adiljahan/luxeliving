import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luxe_living/Constance/colorConst.dart';
import 'package:luxe_living/Feature/Auth/screens/paymentone.dart';

import '../../../Constance/imageconst.dart';
import '../../../main.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.liteorange,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: h * 1,
                  // color: Colors.red,
                  child: Column(children: [
                    SizedBox(
                      height: h * 0.06,
                    ),
                    Row(



                      children: [
                        SizedBox(width: w*0.03,),
                        SvgPicture.asset(

                          ImageConst.Arrow,
                          width: w * 0.07,
                        ),
                        SizedBox(width: w*0.25,),
                        Text(
                          "Payment",
                          style: TextStyle(fontSize: 25),
                        )

                        // Image.asset(ImageConst.Arrow1,width: w*0.08,),

                        // Image.asset(ImageConst.orangelove1,width: w*0.07,),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      // height: h*0.03,
                      width: w * 0.89,
                      // color: Colors.red,
                      child: Text(
                        "Delivery method",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("+91 9207814256"),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Text(
                          "change",
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: h * 0.11,
                          width: w * 0.89,

                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: w * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.04,
                            ),
                            Text(
                              "Payment",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(ImageConst.addicon),
                            SvgPicture.asset(ImageConst.mastercart),
                            SvgPicture.asset(ImageConst.paybal),
                            SvgPicture.asset(ImageConst.S),
                          ],
                        ),
                        Container(
                          height: h * 0.09,
                          width: w * 0.89,
                          // color: Colors.red
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("TOTAL:"),
                            SizedBox(
                              width: w * 0.50,
                            ),

                            //
                            Text("\$1220"),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //
                            Text("Shiping:"),
                            SizedBox(
                              width: w * 0.50,
                            ),

                            Text("\$0.0"),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Divider(
                          color: ColorConst.blackConst,
                          indent: w * 0.05,
                          endIndent: w * 0.05,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Grand Total:",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: w * 0.40,
                            ),
                            Text(
                              "\$1220.1",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.05,
                        ),

      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => paymentone(),));
          setState(() {

          });

                        },
                          child: Container(
                            height: w * 0.12,
                            width: w * 0.75,
                            child: Center(
                                child: Text(
                              "Confirm Payment",
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
                      ],
                    )
                  ])),
            ],
          ),
        ));
  }
}
