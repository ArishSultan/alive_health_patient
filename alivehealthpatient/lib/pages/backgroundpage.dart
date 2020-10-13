import 'package:alivehealthpatient/widgets/alivehealth-button.dart';
import 'package:alivehealthpatient/widgets/alivehealth-textformfield.dart';
import 'package:flutter/material.dart';

class BackGroundPage extends StatefulWidget {
  Widget child;
  BackGroundPage({this.child});

  @override
  _BackGroundPageState createState() => _BackGroundPageState();
}

class _BackGroundPageState extends State<BackGroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(450, 320),
                    bottomLeft: Radius.elliptical(350, 150)),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.elliptical(250, 200)),
                )),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Padding(
              padding: const EdgeInsets.only(left:50.0),
              child: AliveHealthTextFormField(lable: "Email"),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left:50.0),
              child: AliveHealthTextFormField(lable: "Password"),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,right: 10),
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
                  padding: const EdgeInsets.only(top:50.0),
                  child: AliveHealthButton(text: "Sign In",),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
