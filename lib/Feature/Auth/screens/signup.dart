import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constance/colorConst.dart';
import '../../../Constance/imageconst.dart';
import '../../../main.dart';
import 'Bottampage.dart';
import 'main_meanu.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: ColorConst.whiteconst,
      //     automaticallyImplyLeading: false,
      //     elevation: 0,
      //     title: Center(
      //       child: Text(
      //         "Login",
      //         style: (TextStyle(fontSize: 20, color: ColorConst.blackConst,)),
      //       ),
      //     )),
      body: SafeArea(
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: ColorConst.orangeconst,
          body: Center(
            child: Container(
              height: h*0.7,
              width: w*0.88,
              decoration: BoxDecoration(
                  color: ColorConst.whiteconst,
                  borderRadius: BorderRadius.circular(w*0.05),
                  boxShadow: [BoxShadow(color: ColorConst.greyConst,spreadRadius: 2,blurRadius: 4,offset: Offset(0, 4),),]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Signup",style: TextStyle(
                    fontSize: w*0.06,
                    fontWeight: FontWeight.w500,
                  ),),
                  Container(
                    width: w*0.75,
                    height: h*0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: ColorConst.greyConst,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        enabledBorder:  OutlineInputBorder(),

                      ),
                    ),
                  ),
                  Container(
                    width: w*0.75,
                    height: h*0.06,
                    // color: Colors.red,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "create password",
                        labelStyle: TextStyle(
                          color: ColorConst.greyConst,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        enabledBorder:  OutlineInputBorder(),

                      ),
                    ),
                  ),
                  Container(
                    width: w*0.75,
                    height: h*0.06,
                    // color: Colors.red,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        labelStyle: TextStyle(
                          color: ColorConst.greyConst,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.greyConst,
                            )
                        ),
                        enabledBorder:  OutlineInputBorder(),

                      ),
                    ),
                  ),
                  // SizedBox(height: h*0.03,),
                  InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Bottampage(),));
                  },
                    child: Container(
                      height: h*0.06,
                      width: w*0.3,

                      decoration: BoxDecoration(
                          color: ColorConst.lightorange,
                          borderRadius: BorderRadius.circular(w*0.06)
                      ),
                      child: Center(
                        child: Text("Sinup",style:
                        TextStyle(color: ColorConst.whiteconst,
                            fontSize: w*0.04,
                            fontWeight: FontWeight.w500),
                        ),

                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",style: TextStyle(
                          color:ColorConst.greyConst,fontSize: w*0.03
                      ),),
                      SizedBox(height: h*0.04,),
                      Text("Login",style: TextStyle(
                          color:ColorConst.orangeconst,fontSize: w*0.03
                      ),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: w*0.03),
                    width: w*0.75,
                    height: h*0.06,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(w*0.03,)
                          ,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(ImageConst.gogle),
                        Text("Login with Google",style: TextStyle(fontSize: 17),)
                      ],
                    ),

                  )
                ],
              ),
            ),
          ),
        ),
      )
      ,
    );
  }
}
