import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productpage/view/bottomnavigation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Battomnavigation()),
              );
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: Text(
            "Your Account",
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(color: Colors.white)),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                width: 330,
                child: Card(
                  color: Colors.blueGrey.shade400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.blueGrey,
                        ),
                      )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("User Name",
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          SizedBox(height: 5),
                          Text("Number",
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Orders",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Settings",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "FAQ",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Customer Care",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Return and Echange",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Privacy",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Guides",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Terms and Condition",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Logout",
                            style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
