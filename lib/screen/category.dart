import 'package:flutter/material.dart';
import 'package:travel/category_data.dart';

import '../widgets/viewItem.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: Categories_data.length,
            itemBuilder: (context, index) {
              return ViewItem(Categories_data[index].title,
                  Categories_data[index].imageUrl, Categories_data[index].id);
            }),
      ),
    );
  }
}
