import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxe_living/Constance/imageconst.dart';
import 'package:luxe_living/Feature/Auth/screens/Profile_page.dart';

import '../../../Constance/colorConst.dart';
import '../../../main.dart';
import 'CartPage.dart';
import 'Payment.dart';
import 'Product_Details.dart';
import 'favorites.dart';

class mainmanu extends StatefulWidget {
  const mainmanu({super.key});

  @override
  State<mainmanu> createState() => _mainmanuState();
}
// List page=[
//   mainmanu(),
//   profile(),
// ];
List like=[];

class _mainmanuState extends State<mainmanu> {
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
  List A = [
    ImageConst.all,
    ImageConst.sofalogo,
    ImageConst.TV,
    ImageConst.Litelamp,
  ];
  List B = [
    {
      "Img": ImageConst.roomsofa,
      "Text": "Room Sofa",
      "colour1": ColorConst.orangeconst,
      "colour2": ColorConst.blue,
      "colour3": ColorConst.red,
      "Text2": "\$650 "
    },
    {
      "Img": ImageConst.courTv,
      "Text": "CourTv",
      "colour1": ColorConst.orangeconst,
      "colour2": ColorConst.blue,
      "colour3": ColorConst.blue,
      "Text2": "\$1000 "
    },
    {
      "Img": ImageConst.lamp,
      "Text": "Table Lamp",
      "colour1": ColorConst.yellowConst,
      "colour2": ColorConst.blue,
      "colour3": ColorConst.red,
      "Text2": "\$300 "
    },
    {
      "Img": ImageConst.cabinte,
      "Text": "Cabbinet",
      "colour1": ColorConst.orangeconst,
      "colour2": ColorConst.blue,
      "colour3": ColorConst.red,
      "Text2": "\$450 "
    }
  ];
  // List page=[
  //   mainmanu(),
  //   favorites(),
  //   Payment(),
  //
  //
  //   Cartpage(),
  //   profile(),
  //
  // ];
  int selectIndex = 0;
  int selectIndex2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.liteorange,
        body: Column(children: [
          Container(
            // color: ColorConst.red,
            margin: EdgeInsets.all(w * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find the home\n Furniture',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.menu,
                  size: w * 0.09,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: w * 0.02),
            height: h * 0.14,
            width: w * 0.9,
            // color: Colors.red,
            // color: ColorConst.red,
            //width: w*0.05,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: A.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      selectIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(w * 0.03),
                      height: h * 0.06,
                      width: w * 0.16,
                      decoration: BoxDecoration(
                        color: selectIndex == index
                            ? ColorConst.orangeconst
                            : Colors.grey
                                .shade200, // Change color based on selection
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            A[index],
                            color: selectIndex == index
                                ? ColorConst.whiteconst
                                : ColorConst.orangeconst,
                            width: w * 0.08,
                          ),
                        ],
                      ),

                      // Use the actual item from the list
                    ),
                  );

                }),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: w * 0.005,
                  mainAxisSpacing: h * 0.002,
                  childAspectRatio: 0.61),
              itemCount: B.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: h * 0.35,
                      width: w*0.45,
                      // color: Colors.red,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(w * 0.02),
                              height: h * 0.26,
                              width: w * 0.48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(w * 0.06),
                                boxShadow: [BoxShadow(color: ColorConst.blackConst.withOpacity(0.2),blurRadius: 4,spreadRadius: 2,offset: Offset(0, 4))],
                                color: ColorConst.whiteconst,
                                // ),child:   Row(
                                //   children: [
                                //     Positioned(top: h*0.05,left: w*0.11,bottom: h,
                                //         child: SvgPicture.asset(ImageConst.orangelove,width: w*0.04,alignment: Alignment.bottomRight)),
                                //   ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: h * 0.06,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text(
                                          B[index]["Text"],
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ), //SizedBox(height: h*0.03,),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        // SizedBox(width: w*0.01,),
                                        CircleAvatar(
                                          radius: w * 0.02,
                                          backgroundColor: B[index]["colour1"]
                                        ),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        CircleAvatar(
                                          radius: w * 0.02,
                                          backgroundColor:  B[index]["colour2"]
                                        ),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        CircleAvatar(
                                            radius: w * 0.02,
                                            backgroundColor:  B[index]["colour3"])
                                      ],
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          B[index]["Text2"],
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        InkWell(onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(),));
                                        },
                                          child: CircleAvatar(
                                            radius: w * 0.05,
                                            backgroundColor: ColorConst.orangeconst,
                                            child: Icon(
                                              Icons.add,
                                              color: ColorConst.whiteconst,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: h * 0.23,
                            left: w*0.10,


                            // height: h*0.18, left: w*0.06, width: w*0.35, top: h*0.03,
                            child: Container(
                              height: h*0.33,
                              width: w*0.26,
                              // color: Colors.red,

                              child: Image.asset(
                                B[index]["Img"],
                                width: w * 0.46,
                                height: h * 0.145,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(
                              right: w * 0.087,
                              top: h * 0.07,
                              child: GestureDetector(
                                onTap: () {
                                  if(like.contains(index)){
                                    like.remove(index);
                                  }else{
                                    like.add(index);
                                  }
                                  setState(() {

                                  });
                                },
                                child:  Icon(like.contains(index)?Icons.favorite:Icons.favorite_border,color: Colors.red,)
                              ))

                          //   Positioned(height: h*0.06,left: w*0.11 ,
                          //     child: Container(
                          //
                          //       height: h*0.08,
                          //       width: w*0.24,
                          //       // color: Colors.red,
                          //       child: Image.asset(ImageConst.roomsofa,fit:BoxFit.fill,),
                          //
                          //
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            ),
          ),
        ]));
  }
}
