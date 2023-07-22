import '../screen/categoryType.dart';
import 'package:flutter/material.dart';
import 'package:travel/category_data.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});
  static const srreenRoute = 'tripDetails';

  Widget sectionTitle (String title){
    return
     Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          );
  }

  Widget containerbuilder (Widget widd){
    return
    Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 0),
            child: widd );
  }

  @override
  Widget build(BuildContext context) {
    final argim = ModalRoute.of(context)!.settings.arguments as String;
    final selecttrip = Trips_data.firstWhere(
      (element) => element.id == argim,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('${selecttrip.title}'),
      ),
      body: ListView(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            child: Image.network(
              selecttrip.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
         sectionTitle('الانشطة') ,
        containerbuilder(
           ListView.builder(
              itemCount:selecttrip.activities.length ,
              itemBuilder: (ctx, index) {
                return  Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Card(child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text('${selecttrip.activities[index]}'),
                  )));
              },
              ),
          ),
          sectionTitle('البرنامج اليومي'),
          containerbuilder(
            ListView.builder(
              itemCount: selecttrip.program.length,
              itemBuilder: (context , index){
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text('يوم ${index+1}')),
                      title: Text('${selecttrip.program[index]}'),
                    ),
                    Divider(),
                  ],
                );
              })

          ),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}
