import 'package:attendanceapp/constants/AppConstants.dart';
import 'package:attendanceapp/landingpage.dart';
import 'package:flutter/material.dart';

import 'button_widgets/CurvedButton.dart';
import 'button_widgets/SimpleButton.dart';
import 'home.dart';
import 'input_widgets/EmailField.dart';
import 'input_widgets/PasswordField.dart';

class LoginScreenMobile extends StatelessWidget {
  const LoginScreenMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Its here");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff2f3f7),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffff8c00),
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(70),
                  bottomRight: const Radius.circular(70),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // LogoLabel(
              //   logoText: "SmartPro",
              // ),
              _buildContainer(context),
              // _buildSignUpBtn(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContainer(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          "assets/RI_Logo-icon@2x.png",
                          // height: MediaQuery.of(context).size.height / 10,
                          // width: MediaQuery.of(context).size.height / 10,
                          height: 90,
                          width: 90,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Rite Infotech",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: EmailField(
                      labelText: "Email Id",
                      leftPadding: 4,
                      rightPadding: 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: PasswordField(leftPadding: 4, rightPadding: 4),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SimpleButton(
                      buttonLabel: "Forgot Password?",
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CurvedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      buttonLabel: "Login",
                      // widthvalue: MediaQuery.of(context).size.width / 120,
                      widthvalue: 3,
                    ),
                  ),
                  //_buildOrRow(),
                  //RoundedButton (),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Padding(
                  //       padding: EdgeInsets.only(top: 0),
                  //       child: FlatButton(
                  //         onPressed: () {},
                  //         child: RichText(
                  //           text: TextSpan(children: [
                  //             TextSpan(
                  //               text: 'Dont have an account? ',
                  //               style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize:
                  //                     MediaQuery.of(context).size.height / 50,
                  //                 fontWeight: FontWeight.w400,
                  //               ),
                  //             ),
                  //             TextSpan(
                  //               text: 'Sign Up',
                  //               style: TextStyle(
                  //                 color: mainColor,
                  //                 fontSize:
                  //                     MediaQuery.of(context).size.height / 50,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             )
                  //           ]),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//   Widget _buildSignUpBtn(context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(top: 40),
//           child: FlatButton(
//             onPressed: () {},
//             child: RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                   text: 'Dont have an account? ',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: MediaQuery.of(context).size.height / 40,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'Sign Up',
//                   style: TextStyle(
//                     color: mainColor,
//                     fontSize: MediaQuery.of(context).size.height / 40,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ]),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
}
