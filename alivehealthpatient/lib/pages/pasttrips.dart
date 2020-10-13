import 'package:flutter/material.dart';
class PastTrips extends StatefulWidget {
  @override
  _PastTripsState createState() => _PastTripsState();
}

class _PastTripsState extends State<PastTrips> {
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
                      padding: const EdgeInsets.only(top: 20, bottom: 30),
                      child: Image.asset("assets/faq.png"),
                    ),
                    _QuestionViewer(
                      date: '4-7-20',
                      detail:'shahzaib',
                      place:'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',

                    ),

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
class _QuestionViewer extends ExpansionTile {
  _QuestionViewer({String date, String place,String detail})
      : super(
      title: Row(
        children: [ 
          Padding(
          padding: const EdgeInsets.only(left: 30),
          child:
          Text(date, style: TextStyle(color: Colors.grey.shade600)),
          
        ),
          Padding(
            padding: const EdgeInsets.only(left :8.0),
            child: Text(detail),
          )
        
        ]
      ),
      
      children: [
        Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 45, right: 20),
              child: Text(place,
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ))
      ]);
}
