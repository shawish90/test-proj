
import 'package:flutter/material.dart';
import 'package:travel/models/trip.dart';
import 'package:travel/screen/tripDetails.dart';


class ViewTipe extends StatelessWidget {
  //const ViewTipe({super.key});
  final String id ;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  

  const ViewTipe(
     {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.tripType,
      required this.season});

      String get seasontext {
        String ? c ;
        if (season == Season.Summer){
       c  = 'صيف'; }
      if (season == Season.Winter){
         c  = 'شتاء'; }
      if (season == Season.Spring){
         c  = 'ربيع'; }
      
      if (season == Season.Autumn){
         c  = 'خريف'; }
         return c! ;
      }

String get triptype {
        String ? v ;
        if (tripType == TripType.Activities){
        v = 'أنشطة'; }
      if (tripType == TripType.Exploration){
        v  = 'استكشاف'; }
      if (tripType == TripType.Recovery){
        v = 'نقاهة'; }
      if (tripType == TripType.Therapy){
        v = 'معالجة'; }
         return v! ;
      }

      void viewDetailss (BuildContext context){
        Navigator.of(context).pushNamed(TripDetails.srreenRoute , 
        arguments: id
        );
      }
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
       viewDetailss(context) ;
    },
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                height: 250,
                padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 18),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(1),
                    ],
                    stops: [0.5 , 1]
                  )
                ),
                child: Text(
                  title,
                  //textAlign: ,
                  style: Theme.of(context).textTheme.headline5,
                ),
              )
            ],
          ),
          Padding(padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(children: [
              Icon(Icons.today , color: Colors.orange,),
              SizedBox(width: 6,),
              Text('$duration يوم',style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
            Row(children: [
              Icon(Icons.sunny , color: Colors.orange,),
              SizedBox(width: 6,),
              Text('فصل $seasontext' ,style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
           Row(children: [
              Icon(Icons.family_restroom , color: Colors.orange,),
              SizedBox(width: 6,),
              Text(' $triptype' ,style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
          ],),)
        ]),
      ),
    );
  }
}
