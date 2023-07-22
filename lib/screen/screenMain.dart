import 'package:flutter/material.dart';
import './categoryType.dart';
import './fovarites.dart';
import 'category.dart';

class screenMain extends StatefulWidget {
  //const screenMain({super.key});

  @override
  State<screenMain> createState() => _screenMainState();
}

class _screenMainState extends State<screenMain> {
  int selectedIndex = 0;
  List<Map> screenss = [
    {'screen': HomePage(), 'title': 'الدليل السياحي'},
    {'screen': Fovarites(), 'title': 'المفضلة'}
  ];

  void selectScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenss[selectedIndex]['title']),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'التصنيفات'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'المفضلة')
        ],
        onTap: selectScreen,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        backgroundColor: Colors.blue,
      ),
      body: screenss[selectedIndex]['screen'],
    );
  }
}
