import 'package:alivehealthpatient/widgets/aliehealth-searchfieald.dart';
import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.menu,color: Colors.white,)
          ],
         leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: (){
           Navigator.pop(context);
         }),
          elevation: 0,
        ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(bottom :12.0,),
                  child: AliveHealthSearchField(lable: "Your Location"    ,icon: Icon(Icons.location_on,color: Colors.grey.shade300,),),
                ),
                AliveHealthSearchField(lable: "Hospital Location",icon: Icon(Icons.location_on,color: Colors.grey.shade300,),)
              ],
            ),

          ),
        ],
      ),
    );
  }
}
