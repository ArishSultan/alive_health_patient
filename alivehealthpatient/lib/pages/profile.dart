import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){},child: Icon(Icons.edit),),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color:
            Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [
          Container(
            height:MediaQuery.of(context).size.height/8,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height:MediaQuery.of(context).size.height/1.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black12,blurRadius: 8)
                ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  )
              ),

              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(

                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/person.png"),
                      radius: 30,

                    ),

                     Padding(
                      padding: const EdgeInsets.only(top:45,left:30.0),
                      child: Row(
                        children: [
                          Text("Name:",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0),
                            child: Text("Mr.ABC XYZ",style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Divider(), Padding(
                      padding: const EdgeInsets.only(top:10,left:30.0),
                      child: Row(
                        children: [
                          Text("Email:",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0),
                            child: Text("abc@alive.com",style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Divider(), Padding(
                      padding: const EdgeInsets.only(top:10,left:30.0),
                      child: Row(
                        children: [
                          Text("Phone:",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0),
                            child: Text("123456789",style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Divider(), Padding(
                      padding: const EdgeInsets.only(top:10,left:30.0),
                      child: Row(
                        children: [
                          Text("City:",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left:70.0),
                            child: Text("Abuja",style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(top:10,left:30.0),
                      child: Row(
                        children: [
                          Text("Country:",style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Text("Nigeria",style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
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
