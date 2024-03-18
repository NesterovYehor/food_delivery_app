import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/services/restauran_service.dart';
import 'package:provider/provider.dart';

class FoodDetailsView extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};


  FoodDetailsView({super.key, required this.food}){
    for (Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodDetailsView> createState() => _FoodDetailsViewState();
}

class _FoodDetailsViewState extends State<FoodDetailsView> {
    void addToCart(Food food, Map<Addon, bool> selectedAddons){
    List<Addon> currentlySelectedAddon = [];
    for (Addon addon in food.availableAddons){
      if (selectedAddons[addon] == true){
        currentlySelectedAddon.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddon);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imagePath),
                
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.food.name),
                  
                      Text("\$" + widget.food.price.toString(), style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                      const SizedBox(height: 10),
                      Text(widget.food.description),
                  
                      Divider(color: Theme.of(context).colorScheme.tertiary),
                      const SizedBox(height: 10),
                      Text("Add-ons", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold, fontSize: 16),),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text("\$${addon.price}", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                                value: widget.selectedAddons[addon] ?? false, 
                                onChanged: (bool? value) {
                                  setState(() {
                                     widget.selectedAddons[addon] = value ?? false; 
                                  });
                                }
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  MyButton(onTap: ()  {
                    addToCart(widget.food,  widget.selectedAddons);
                    Navigator.pop(context);
                    }, 
                    text: "Add to Cart")
                ],
              ),
            )
          ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded), 
                onPressed: () => Navigator.pop(context),
              ),
            ),
          )
          )
      ]
    );
  }
}