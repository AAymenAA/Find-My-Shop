import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/function/check_internet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  var res;
  initialdata()async{
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
     initialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('test'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            res == true? Text('true'):Text('false'),
            OtpTextField(
              numberOfFields: 5,
              focusedBorderColor: KMainColor,
              cursorColor: KMainColor,

              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){

              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
