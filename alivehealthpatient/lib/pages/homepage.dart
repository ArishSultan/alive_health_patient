import 'package:alivehealthpatient/pages/location.dart';
import 'package:alivehealthpatient/widgets/aliehealth-searchfieald.dart';
import 'package:alivehealthpatient/widgets/alivehealth-textformfield.dart';
import 'package:alivehealthpatient/widgets/header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.menu,color: Colors.white,)
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20,top:145,right: 20),
            child: heading("Health Centers Nearby You", "See All", (){}),
          ),
      Padding(
        padding: const EdgeInsets.only(left: 20,top: 160),
        child: categoryTile("Mayo Clinic", "General Hospital ", "assets/avalon.png",Icon(Icons.search), (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>Location()));

        }),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 160,top: 160),
            child: categoryTile("Mayo Clinic", "General Hospital ", "assets/gear.png",Icon(Icons.search), (){}),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20,top:345,right: 20),
            child: heading("Already Visited", "See All", (){}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 360),
            child: categoryTile("Mayo Clinic", "General Hospital ", "assets/avalon.png",Icon(Icons.search), (){}),
          ),



      Container(
      height: MediaQuery.of(context).size.height/6,
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
              padding: const EdgeInsets.only(right: 180,bottom: 10),
              child: Text("Health Centers",style: TextStyle(color: Color(0xff1B4152),fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80,bottom: 10),
              child: Text("search best hospital around you",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            AliveHealthSearchField(lable: "Search here-Abuja",icon: Icon(Icons.search,color: Colors.grey.shade300,),)
          ],
        ),

      ),





        ],
      ),
    );

  }


  Widget heading(String tile, String detail,Function onTap)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tile ,style: TextStyle(color: Color(0xff1B4152),fontWeight: FontWeight.bold)),
        InkWell(
          onTap: onTap,
          child: Text(detail,style: TextStyle(color: Color(0xfff1C859)),),
        )

      ],
    );

  }

  Widget categoryTile(String name,  String title ,String image,Icon icon ,Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(


        color: Colors.red,
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          height: 170,
         width: 120,
          child: Column(
            children: [
              Image.asset(image,width:MediaQuery.of(context).size.width,)
            ],
          ),
        ),

      ),
    );
  }






}
