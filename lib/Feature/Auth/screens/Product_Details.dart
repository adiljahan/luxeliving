import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luxe_living/Constance/imageconst.dart';

import '../../../Constance/colorConst.dart';
import '../../../main.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override


  State<ProductDetails> createState() => _ProductDetailsState();
}


class _ProductDetailsState extends State<ProductDetails> {
  int count =0;
  // List <Widget>As =[
  //   Icon(Icons.home,color: ColorConst.orangeconst,),
  //   Icon(Icons.favorite,color: ColorConst.orangeconst,),
  //   Icon(Icons.document_scanner,color: ColorConst.orangeconst,size: 50,),
  //
  //   Icon(Icons.shopping_cart,color: ColorConst.orangeconst,),
  //   Icon(Icons.person,color: ColorConst.orangeconst,),
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.liteorange,

      //bottomNavigationBar: CurvedNavigationBar(items: As,color: ColorConst.whiteconst,backgroundColor: ColorConst.liteorange,),





      // bottomNavigationBar: BottomNavigationBar(
      //
      //   iconSize: 26,
      //   // items: <BottomNavigationBarItem>[
      //   //
      //   //   BottomNavigationBarItem(
      //   //     icon: Icon(Icons.home,color: ColorConst.orangeconst,),
      //   //     label: 'Favorites',
      //   //   ),
      //   //
      //   //
      //   //   BottomNavigationBarItem(
      //   //
      //   //
      //   //     icon: Icon(Icons.favorite,color: ColorConst.orangeconst,),
      //   //     label: 'Favorites',
      //   //   ),
      //   //   BottomNavigationBarItem(
      //   //     icon: Icon(Icons.shopping_cart,color: ColorConst.orangeconst,),
      //   //     label: 'Cart',
      //   //   ),
      //   //   BottomNavigationBarItem(
      //   //     icon: Icon(Icons.person_pin_rounded,color: ColorConst.orangeconst,),
      //   //     label: 'Cart',
      //   //   ),
      //   // ],
      // ),

      body: Container(
        height: h*30,
        // color: Colors.red,
        child: Column(
          children: [
            SizedBox(
              height: h*0.04,
            ),
            Container(
              margin: EdgeInsets.only(left: w*0.03),
              height: h*0.07,
              width: w*0.9,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  SvgPicture.asset(ImageConst.Arrow),
                  SvgPicture.asset(ImageConst.orangelove)

                  // Image.asset(ImageConst.Arrow1,width: w*0.08,),
                  
                  // Image.asset(ImageConst.orangelove1,width: w*0.07,),
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: w*0.03),
              height: h*0.39,
              width: w*0.92,
              // color: Colors.red,
              child: Image.asset(ImageConst.roomsofa,fit: BoxFit.cover,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Room Sofa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Container(
                  height: h*0.05,
                  width: w*0.31,
                  decoration: BoxDecoration(

                    color: ColorConst.lightGrey,
                    borderRadius: BorderRadiusDirectional.circular(w*0.03),


                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: (){
                        count++;
                        setState(() {

                        });
                      },
                          child: Icon(Icons.add,)),
                      Text(count.toString()),

                      InkWell(onTap:(){
                        count<=0 ?0:count--;
                        setState(() {

                        });
                      },
                          child: Icon(Icons.remove))
                    ],
                  ),


                ),

              ],

            ),

            Container(
              margin: EdgeInsets.only(right: w*0.7),
              height: h*0.03,
              width: w*0.22,
              // color: Colors.red,
              child: Row(

                children: [
                  SizedBox(width: w*0.05,),
                  CircleAvatar(radius: w*0.02,backgroundColor: ColorConst.orange,),
                  SizedBox(width: w*0.02,),
                  CircleAvatar(radius: w*0.02,backgroundColor: ColorConst.red,),
                  SizedBox(width: w*0.02,),
                  CircleAvatar(radius: w*0.02,backgroundColor: ColorConst.blue),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: w*0.07),
              height: h*0.24,

              // color: Colors.red,
              child: Text("A room sofa is a versatile and\nessential piece of furniture providing\na cozy and inviting spot for\nrelaxation, socializing, and\nentertainment",style: TextStyle(
                fontSize: 17,
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: w*0.06,top: w*0.04),
                  // color: Colors.blue,

                  child: Text("\$650",style: TextStyle(
                    fontSize: 25
                  ),


                  ),


                ),
                Container(
                  margin: EdgeInsets.only(right: w*0.05),
                  height: h*0.05,
                  width: w*0.30,
                  decoration: BoxDecoration(

                    color: ColorConst.lightorange,
                    borderRadius: BorderRadiusDirectional.circular(w*0.0),


                  ),
                  child: Center(child: Text("Add to Cart",style: TextStyle(color:ColorConst.whiteconst ),)),



                ),

              ],
            ),
            // Container(
            //   height: h*0.08,
            //   decoration: BoxDecoration(
            //     color: ColorConst.yellowConst
            // //
            // //   ),
            // // )
            //
            //
            //   ))],
        ]),
      ),
    );
  }
}
