import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_living/Constance/imageconst.dart';
import 'package:luxe_living/Feature/Auth/screens/paymentone.dart';
import 'package:luxe_living/main.dart';

import '../../../Constance/colorConst.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}



class _CartpageState extends State<Cartpage> {

  List a =[
    {'img': ImageConst.roomsofa,
      'text':'Room Sofa','text2':1999,'qty':0},
    {'img': ImageConst.courTv,
      'text':'Tv','text2':5999,'qty':0},
    {'img': ImageConst.lamp,
      'text':'Lamp','text2':999,'qty':0},
    {'img': ImageConst.cabinte,
      'text':'Cabinet','text2':3999,'qty':0}

  ];
  int count = 0;
  getTotal(){
    count=0;
    for(int i=0; i<a.length; i++){
      count=a[i]["text2"]*a[i]['qty']+count;

    }}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.orangeconst,
        floatingActionButton: Container(
          height: w*0.13,
          width: w*1,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(w*0.04),
                topRight: Radius.circular(w*0.04),
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("TOTAL : $count",style: TextStyle(
                  fontWeight: FontWeight.w600
              ),),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>paymentone(
                    
                  ) ,));

                },
                child: Container(
                  height: h*0.1,
                  width: w*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.04),
                    color: ColorConst.orangeconst,
                  ),
                  child: Center(
                    child: Text("Submit",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300
                    )),
                  ),
                ),
              ),

            ],
          ),
        ),

        appBar: AppBar(
          backgroundColor: ColorConst.orangeconst,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          title: Center(
              child: Text(
            "My Cart",
            style: GoogleFonts.merriweather(
                color: Colors.white, fontSize: w * 0.04),
          )),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: w*0.06,
              crossAxisSpacing: w * 0.04,
              mainAxisExtent: h * 0.20,
              childAspectRatio: w * 0.03),
          itemCount: a.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.all(w*0.03),
              child: Container(

                width: w * 0.7,
                height: h * 0.11,
                decoration: BoxDecoration(
                    color: ColorConst.whiteconst,
                    borderRadius: BorderRadius.all(Radius.circular(w * 0.05))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: AssetImage(a[index]['img']),
                      width: w * 0.16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          a[index]['text'],
                          style: GoogleFonts.merriweather(fontSize: w * 0.035),
                        ),
                        Text(a[index]['text2'].toString(),
                            style: GoogleFonts.merriweather(fontSize: w * 0.035)),


                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                a[index]["qty"]>0?a[index]["qty"]--:0;
                                getTotal();
                                setState(() {});
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: w * 0.03,
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                             a[index]['qty'].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                a[index]["qty"]++;
                                getTotal();
                                setState(() {});
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: w * 0.03,
                                child: Icon(Icons.add),
                              ),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     showDialog(
                            //       context: context,
                            //       barrierDismissible: false,
                            //       builder: (context) {
                            //         return AlertDialog(
                            //           actionsAlignment: MainAxisAlignment.spaceEvenly,
                            //           title: Text("Sure?"),
                            //           actions: [
                            //             InkWell(
                            //                 onTap: () {
                            //                   Navigator.pop(context);
                            //                   count = 0;
                            //                   setState(() {});
                            //                 },
                            //                 child:
                            //                 Text("Yes", style: TextStyle(fontSize: 20))),
                            //             InkWell(
                            //                 onTap: () {
                            //                   Navigator.pop(context);
                            //                 },
                            //                 child: Text("NO", style: TextStyle(fontSize: 20)))
                            //           ],
                            //         );
                            //       },
                            //     );
                            //
                            //     setState(() {});
                            //   },
                            //   child: CircleAvatar(
                            //     child: Icon(Icons.refresh_sharp),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.delete,
                      size: w * 0.1,
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
