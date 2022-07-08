 import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/Views/Catogories.dart';
import 'package:shopapp/Views/HomeScreen.dart';
import 'package:shopapp/Views/cart.dart';
import 'package:shopapp/Views/user.dart';
import 'package:shopapp/provider/dark_theme_provider.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    UserScreen(),
  ];
  void _selectedPage(int index){
    setState((){
      _selectedIndex = index;
    });
}

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeprovider>(context);
    bool _isDark = themeState.getDarkTheme;
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _isDark? Theme.of(context).cardColor : Colors.white,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: _isDark ? Colors.white70 : Colors.black54,
        selectedItemColor: _isDark ? Colors.lightBlue.shade200: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(_selectedIndex == 1 ? IconlyBold.category : IconlyLight.category),
           label: "Categories"),
          BottomNavigationBarItem(icon: Icon(_selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy),
              label: "Cart"),
          BottomNavigationBarItem(icon: Icon(_selectedIndex == 3 ? IconlyBold.user2 : IconlyLight.user2),
              label: "User")
        ],
      ),
    );
  }
}
