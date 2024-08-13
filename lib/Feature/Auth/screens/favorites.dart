import 'package:flutter/material.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';
import 'main_meanu.dart';

class favorites extends StatefulWidget {
  const favorites({super.key});

  @override
  State<favorites> createState() => _favoritesState();
}

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
  },
];

class _favoritesState extends State<favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.liteorange,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                // color: ColorConst.red,
                margin: EdgeInsets.all(w * 0.08),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ])),
            GridView.builder(
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
                      width: w * 0.45,
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
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          ColorConst.blackConst.withOpacity(0.2),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                      offset: Offset(0, 4))
                                ],
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ), //SizedBox(height: h*0.03,),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.start,
          
                                      children: [
                                        // SizedBox(width: w*0.01,),
                                        CircleAvatar(
                                            radius: w * 0.02,
                                            backgroundColor: B[index]["colour1"]),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        CircleAvatar(
                                            radius: w * 0.02,
                                            backgroundColor: B[index]["colour2"]),
                                        SizedBox(
                                          width: w * 0.02,
                                        ),
                                        CircleAvatar(
                                            radius: w * 0.02,
                                            backgroundColor: B[index]["colour3"])
                                      ],
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          B[index]["Text2"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: w * 0.05,
                                          backgroundColor: ColorConst.orangeconst,
                                          child: Icon(
                                            Icons.add,
                                            color: ColorConst.whiteconst,
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
                            left: w * 0.10,
          
                            // height: h*0.18, left: w*0.06, width: w*0.35, top: h*0.03,
                            child: Container(
                              height: h * 0.33,
                              width: w * 0.26,
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
                                    if (like.contains(index)) {
                                      like.remove(index);
                                    } else {
                                      like.add(index);
                                    }
                                    setState(() {});
                                  },
                                  child: Icon(
                                    like.contains(index)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                  )))
          
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
          ]),
        ));
  }
}
