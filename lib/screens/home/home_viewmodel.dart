import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/food_tile.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/food_details/food_details_view.dart';
import 'package:food_delivery_app/services/auth_service.dart';
import 'package:food_delivery_app/services/restauran_service.dart';

class HomeViewModel extends ChangeNotifier{
  final _locationTextControler = TextEditingController();
  var location = "5601 Hollywood Bly";
  final restaurant = Restaurant();
  final auth = AuthService();

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
  return FoodCategory.values.map((category) {
    List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
    return ListView.builder(
      itemCount: categoryMenu.length,
      itemBuilder: (context, index) {
        return FoodTile(food: categoryMenu[index], onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsView(food: categoryMenu[index]),)));
      },
    );
  }).toList();
}


  void openLocationSearchBox(BuildContext context){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Your location"),
        content: TextField(
          controller: _locationTextControler,
          decoration: const InputDecoration(hintText: "Search adress.."),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
            ),
          MaterialButton(
            onPressed: () {
              location = _locationTextControler.text;
              _locationTextControler.clear();
              Navigator.pop(context);
            },
            child: Text("Save"),
            )
        ],
      )
      );
  }
}