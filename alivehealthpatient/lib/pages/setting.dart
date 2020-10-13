import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchControl = false;
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //  height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SizedBox(
            height: 106.0 + MediaQuery.of(context).padding.top,
            child: AppBar(
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {

                    Navigator.of(context);
                  }),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              backgroundColor: Theme.of(context).primaryColor,
              bottom: PreferredSize(
                  child: SizedBox(), preferredSize: Size.fromHeight(50)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 80, bottom: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x44000000),
                      blurRadius: 50,
                      offset: Offset(0, 30),
                      spreadRadius: 15)
                ],
                borderRadius: BorderRadius.circular(25)),
            child: Material(
              color: Colors.transparent,
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: Image.asset("assets/gear.png"),
                    ),
                    cupertinoSwitch(
                        toggleSwitch, switchControl, context, "Setting One"),
                    Divider(color: Colors.grey.shade300),
                    cupertinoSwitch(
                        toggleSwitch, switchControl, context, "Setting Two"),
                    Divider(color: Colors.grey.shade300),
                    cupertinoSwitch(
                        toggleSwitch, switchControl, context, "Setting Three"),
                    Divider(color: Colors.grey.shade300),
                    cupertinoSwitch(
                        toggleSwitch, switchControl, context, "Setting Four"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cupertinoSwitch(Function toggleSwitch, bool switchControl,
    BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        CupertinoSwitch(
          onChanged: toggleSwitch,
          value: switchControl,
          activeColor: Theme.of(context).primaryColor,
          trackColor: Colors.grey,
        )
      ],
    ),
  );
}
