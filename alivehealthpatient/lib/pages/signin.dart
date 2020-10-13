import 'package:alivehealthpatient/pages/homepage.dart';
import 'package:alivehealthpatient/widgets/alivehealth-button.dart';
import 'package:alivehealthpatient/widgets/alivehealth-textformfield.dart';
import 'package:alivehealthpatient/widgets/footer.dart';
import 'package:alivehealthpatient/widgets/header.dart';
import 'package:flutter/material.dart';

import 'forgotpassword.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [
          header(context),
          Align(
            alignment: Alignment.bottomRight,
            child: footer(context),
          ),

          Container(
            alignment: Alignment.topCenter,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AliveHealthTextFormField(lable: "Email"),
                SizedBox(height: 15),
                AliveHealthTextFormField(lable: "Password"),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgortPassword()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0,right: 40),
                      child: Text(
                        "Forgot Password?",
                        textAlign:TextAlign.end,


                        style: TextStyle(

                          letterSpacing: 1.2,

                          decoration: TextDecoration.underline,
                          color: Colors.green,
                        ),
                      ),
                    )
                ) ,
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: AliveHealthButton(text: "Sign In",ontap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                  },),
                )
              ],
            ),
          )



        ],
      ),
    );

  }
}
