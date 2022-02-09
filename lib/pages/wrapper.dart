import 'package:flutter/material.dart';
import 'package:rhaaetask/pages/add.dart';
import 'package:rhaaetask/pages/home.dart';
import 'package:rhaaetask/pages/profile.dart';
import 'package:rhaaetask/pages/search.dart';

import 'message.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int currentindex = 0;
  List<Widget> screens = <Widget>[
    Home(),
    Search(),
    Add(),
    Message(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
          selectedIconTheme: IconThemeData(color: Colors.black),
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: currentindex != 0
                        ? Icon(
                            Icons.home_outlined,
                            color:Colors.black,
                          )
                        : Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        currentindex = 0;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        currentindex = 1;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        currentindex = 2;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon:Icon(Icons.comment, color: Colors.black,),
                    onPressed: () {
                      setState(() {
                        currentindex = 3;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                child: IconButton(
                    icon:Icon(Icons.person_outline, color: Colors.black,),
                    onPressed: () {
                      setState(() {
                        currentindex = 4;
                      });
                    }),
                width: 38,
                height: 38,
              ),
              label: "",
            ),

          ],
        ),
      ),
      body: screens.elementAt(currentindex),
    );
  }
}
