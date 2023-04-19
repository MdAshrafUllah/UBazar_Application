import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'homepage_top_items.dart';
import 'selected_Item_List.dart';
import 'slider/slider_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SliderScreen(),
          HomePageTopItems(),
          SizedBox(
            height: 10,
          ),
          HomePageSelectdItems(),
        ],
      ),
    ),
    Text(
      "CART",
      style: TextStyle(fontSize: 25, color: Colors.grey),
    ),
    Text(
      "FAVORITE",
      style: TextStyle(fontSize: 25, color: Colors.grey),
    ),
    Text(
      "ME",
      style: TextStyle(fontSize: 25, color: Colors.grey),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => _onBackbuttonpressed(context),
        child: Scaffold(
            /* app bar here */
            drawer: Drawer(),
            appBar: AppBar(
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: SvgPicture.asset(
                    "assets/Images/Icon menu.svg",
                    fit: BoxFit.scaleDown,
                  ),
                );
              }),
              title: SvgPicture.asset(
                "assets/Images/white logo.svg",
                fit: BoxFit.scaleDown,
                height: 40,
              ),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(1, 145, 2, 1),
              actions: [
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/Images/Search.svg",
                    height: 20,
                    width: 20,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/Images/shopping-cart.svg",
                    height: 20,
                    width: 20,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            /* body srart here*/
            body: Center(
              child: _pages.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromRGBO(112, 112, 112, 25),
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
                selectedIconTheme: IconThemeData(size: 30),
                selectedItemColor: const Color.fromRGBO(1, 145, 2, 1),
                unselectedItemColor: const Color.fromRGBO(112, 112, 112, 1),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    label: 'Me',
                  ),
                ],
              ),
            )));
  }

  Future<bool> _onBackbuttonpressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Really ?"),
            content: const Text("Do you want to close the app ?"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("No"),
              ),
              TextButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("Yes"),
              ),
            ],
          );
        });
    return exitApp;
  }
}
