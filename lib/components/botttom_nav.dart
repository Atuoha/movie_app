import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_again/screens/favorite_list.dart';
import 'package:flutter_again/screens/home_screen.dart';
import 'package:flutter_again/screens/movies_list.dart';
import '../constants/color.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _pages = [
    const HomeScreen(),
    const MovieFavoriteView(),
    const MovieGridView(),
  ];

  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        showUnselectedLabels: false,
        // type: BottomNavigationBarType.shifting,
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        selectedItemColor: amberVariant,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              size: 20,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              size: 20,
            ),
            label: 'Movies',
          ),
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movies and Stuff',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Montserrat'),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: _pages[currentPage],
        ),
      ),
    );
  }
}
