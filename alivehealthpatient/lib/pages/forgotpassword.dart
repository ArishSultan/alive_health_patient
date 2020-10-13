import 'package:alivehealthpatient/widgets/alivehealth-button.dart';
import 'package:alivehealthpatient/widgets/alivehealth-textformfield.dart';
import 'package:alivehealthpatient/widgets/footer.dart';
import 'package:alivehealthpatient/widgets/header.dart';
import 'package:alivehealthpatient/widgets/topcontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgortPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgortPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
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

                Padding(
                  padding: const EdgeInsets.only(top:10.0,right: 10),
                  child: Text(
                    "Enter email to reset password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,

                      letterSpacing: 1.2,

                      color: Colors.black,
                    ),
                  ),
                ) ,
                SizedBox(height: 15),
                AliveHealthTextFormField(lable: "Email"),
                SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: AliveHealthButton(text: "Send link",ontap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TopContainer()));
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
