import 'package:auth/Screens/home/Home.dart';
import 'package:auth/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OptScreen extends StatefulWidget {
  static String routeName = "/optscreen";
  const OptScreen({Key? key}) : super(key: key);

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/img/vegetables-1.jpg'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Color(0xEA202020),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.all(23),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Registration Page',
                            style: TextStyle(
                                color: PrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                OTPTextField(
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.underline,
                    outlineBorderRadius: 15,
                    otpFieldStyle: OtpFieldStyle(
                        backgroundColor: BackgroundColor,
                        focusBorderColor: Colors.red,
                        enabledBorderColor: Colors.white),
                    style: TextStyle(fontSize: 17, color: Colors.white),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      'Continuer',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    color: PrimaryColor,
                    elevation: 0,
                    minWidth: 350,
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Vous n'avez pas de compte ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Créer un compte",
                            style: TextStyle(
                              color: PrimaryColor,
                              fontSize: 15,
                            ))
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
