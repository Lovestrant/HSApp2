import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Auth/Login.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/SideMenu/ContactUs.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/SideMenu/Location.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, String title = "Home Widget"}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Login(),
      Location(),
      ContactUs(),


    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_ic_call),
            label: 'Contact Us',
          ),
        ],
      ),
    );
  }
}
