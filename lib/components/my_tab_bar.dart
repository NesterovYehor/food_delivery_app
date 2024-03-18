import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  MyTabBar({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  List<Tab> _buildcategoryTabs(){
    return FoodCategory.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight), 
      child: TabBar(
        controller: tabController,
        tabs: _buildcategoryTabs(),
        labelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
        labelPadding: EdgeInsets.symmetric(horizontal: 0.0), 
      ),
    );
  }
}
