import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxe_living/Constance/imageconst.dart';

import '../../../Constance/colorConst.dart';
import '../../../main.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
                Stack(children: [
          Container(
            // margin: EdgeInsets.only(left: w*0.06,top: w*0.03),
            height: h * 1,
            width: w * 1,
            color: Colors.orangeAccent,
          
            //     Container(
            //       height: h * 0.06,
            //       width: w * 0.4,
            //       decoration: BoxDecoration(
            //           color: ColorConst.orangeconst,
            //           borderRadius: BorderRadius.circular(w * 0.03)),
            //       child: Center(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             Text(
            //               "Edit Profile",
            //               style: TextStyle(
            //                   color: ColorConst.blackConst,
            //                   fontSize: w * 0.04,
            //                   fontWeight: FontWeight.bold,),
            //             ),SvgPicture.asset(ImageConst.pen)
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
          Container(
            //margin: EdgeInsets.all(w*0.01),
            height: h * 0.5,
            width: w * 1,
          
            decoration: BoxDecoration(
                color: ColorConst.liteorange,
                // borderRadius: BorderRadius.circular(w*0.05),
                boxShadow: [
                  // BoxShadow(
                  //   color: ColorConst.greyConst,
                  //   spreadRadius: 2,
                  //   blurRadius: 4,
                  //   offset: Offset(0, 4),
                  // ),
                ]),
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.04),
                CircleAvatar(
                  radius: w * 0.13,
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Text(
                  "ADHIL JAHAN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                  height: h * 0.045,
                  width: w * 0.38,
                  decoration: BoxDecoration(
                      color: ColorConst.whiteconst,
                      borderRadius: BorderRadius.circular(w * 0.01)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Edit Profile",
                            style: TextStyle(
                                color: ColorConst.blackConst,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SvgPicture.asset(ImageConst.pen)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: h * 0.08,
            left: w * 0.04,
            child:
            Container(
              margin: EdgeInsets.all(w * 0.01),
          
              height: h * 0.6,
              width: w * 0.9,

          
              child: Padding(
                padding:  EdgeInsets.all(w*0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.Contacts,width: w*0.10,),
                        Text("Contacts",style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                        SvgPicture.asset(ImageConst.Rightarrow),
          
          
                      ],
                    ),
                    SizedBox(height: h*0.05,),
                    // Divider(thickness: w*0.02,color: ColorConst.blackConst,),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.Lock,width: w*0.10,),
                        Text("Change Password",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                        SvgPicture.asset(ImageConst.Rightarrow),
          
          
                      ],
                    ),
                    SizedBox(height: h*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.orangelove,width: w*0.10,),
                        Text("Favourite",style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.bold
                        ),),
                        SvgPicture.asset(ImageConst.Rightarrow),
          
          
                      ],
                    ),
                    SizedBox(height: h*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.Settings,width: w*0.10,),
                        Text("Settings",style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.bold
                        ),),
                        SvgPicture.asset(ImageConst.Rightarrow),
          
          
                      ],
                    ),
                    SizedBox(height: h*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.about,width: w*0.10,),
                        Text("About",style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.bold
                        ),),
                        SvgPicture.asset(ImageConst.Rightarrow),
          
          
                      ],
                    ),
                    SizedBox(
                      height: h*0.03,
                    ),
                    Container(
                      height: h*0.06,
                      width: w*0.3,
                      decoration: BoxDecoration(
                          color: ColorConst.lightorange,
                          borderRadius: BorderRadius.circular(w*0.01)
                      ),
                      child: Center(
                        child: Text("Log Out",style:
          
                        TextStyle(color: ColorConst.whiteconst,
                            fontSize: w*0.04,
                            fontWeight: FontWeight.w500),),
                      ),
                    ),],
                ),
              ),
              
          
              decoration: BoxDecoration(
                  color: ColorConst.orangeconst,
                  borderRadius: BorderRadius.circular(w * 0.06),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConst.blackConst,
                      spreadRadius: 1,
                      blurRadius: 11,
                      offset: Offset(0, 1),
                      blurStyle: BlurStyle.normal
                    ),
                  ]),
          
          
            ),
          
          ),
                ]),
          
              ]),
        ));
  }
}
