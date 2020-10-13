
import 'package:alivehealthpatient/pages/frequentlyaskedquestion.dart';
import 'package:alivehealthpatient/pages/pasttrips.dart';
import 'package:alivehealthpatient/pages/profile.dart';
import 'package:alivehealthpatient/pages/setting.dart';
import 'package:flutter/material.dart';
class TopContainer extends StatefulWidget {
  @override
  _TopContainerState createState() => _TopContainerState();
}
class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: new Drawer(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27),
                    bottomRight: Radius.circular(27),
                    // topLeft: Radius.circular(27),
                    // topRight: Radius.circular(27),
                  ),
                  color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/person.png"),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                    child: Text(
                      "Mr.ABC XYZ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("+9197306270877", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8.0)
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27),
                    bottomRight: Radius.circular(27),
                    topLeft: Radius.circular(27),
                    topRight: Radius.circular(27),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        "Profile",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          size: 10, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        "Settings",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PastTrips()));

                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        "Past Trips",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          size: 10, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrequentlyAskedQuestion()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.perm_identity,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        "FAQ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          size: 10, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        "Log Out",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          size: 10, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
      body: Stack(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
            ),
            // height: 350,
          ),
        ],
      ),
    );
  }
}
