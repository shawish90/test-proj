
import '../category_data.dart';
import 'package:flutter/material.dart';
import '../widgets/viewTipe.dart';

class CategoryType extends StatelessWidget {
  //final String categorytitle ;
  // final String id ;
  // CategoryType(this.categorytitle , this.id);
  static const routcategorytype = 'categoryType';

  get itemBuilder => null;
  @override
  Widget build(BuildContext context) {
    final argumentcategory =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categorytitle = argumentcategory['title'];
    final categoryid = argumentcategory['id'];
    final filterdata = Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ViewTipe(
              id:  filterdata[index].id,
              title: filterdata[index].title,
              imageUrl: filterdata[index].imageUrl,
              duration: filterdata[index].duration,
              tripType: filterdata[index].tripType,
              season: filterdata[index].season);
        }),
        itemCount: filterdata.length,
      ),
    );
  }
}
