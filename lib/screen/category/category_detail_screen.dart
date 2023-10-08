import 'package:flutter/material.dart';

import '../../model/event_category_model.dart';

class CategoryDetailScreen extends StatelessWidget {
  final EventCategory category;

  CategoryDetailScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name,),
      ),
      body: Column(
        children: [
          category.name=="Music"?
          Image.asset('assets/Music1.jpg'):SizedBox(height: 10),
          category.name=="Sports"?
          Image.asset('assets/Sports.jpg'):SizedBox(height: 10),
          category.name=="Food"?
          Image.asset('assets/Food.jpg'):SizedBox(height: 10),
          category.name=="Art"?
          Image.asset('assets/Art.jpg'):SizedBox(height: 10),
          //Text(category.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
          // Text('About Event',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(category.name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Text(category.description,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,letterSpacing: 0.1,color: Colors.black54)),
        ],
      ),
    );
  }
}
