

import 'package:flutter/material.dart';

import '../screen/categoryType.dart';

class ViewItem extends StatelessWidget {
  
  //const ViewItem({super.key});
//final String id ;
  final String titlee;
  final String url;
  final String id ;
void pushCategoryType (BuildContext context){
  Navigator.of(context).pushNamed(CategoryType.routcategorytype ,
  arguments: {
    'id' : id ,
    'title' : titlee
  }
  );
}
  ViewItem(this.titlee, this.url , this.id);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { pushCategoryType(context);},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
              child: Center(
                  child: Text(
            '$titlee',
            style: Theme.of(context).textTheme.headline5,
          ))),
        ],
      ),
    );
  }
}
