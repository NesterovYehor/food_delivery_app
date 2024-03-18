import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //Burgers
    Food(
      name: "Fried Burger", 
      description: "A mouthwatering creation featuring juicy fried chicken fillets nestled between soft burger buns.", 
      imagePath: "lib/images/burgers/FRIED_CHICKEN_BURGER.jpg", 
      price: 10.35, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon (name: "Fried Egg", price: 1.49),
        Addon (name: "Spicy Mayo", price: 0.99),
        Addon (name: "Bacon", price: 1.49),
        ]
      ),
    Food(
      name: "Falafel Burger", 
      description: "A delectable vegetarian option, featuring crispy falafel patties made from ground chickpeas and spices.", 
      imagePath: "lib/images/burgers/Falafel Burger.jpeg", 
      price: 10.35, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon (name: "Fried Egg", price: 1.49),
        Addon (name: "Spicy Mayo", price: 0.99),
        Addon (name: "Bacon", price: 1.49),
        ]
      ),
    Food(
      name: "Cheese Burger", 
      description: "A quintessential burger featuring a juicy beef patty, melted cheese, crisp lettuce and condiments.", 
      imagePath: "lib/images/burgers/Cheese_Burger.jpeg", 
      price: 8.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon (name: "Fried Egg", price: 1.49),
        Addon (name: "Spicy Mayo", price: 0.99),
        Addon (name: "Bacon", price: 1.49),
        ]
      ),
    Food(
      name: "BBQ Burger", 
      description: " A classic burger topped with barbecue sauce.", 
      imagePath: "lib/images/burgers/BBQ Burger.jpeg", 
      price: 9.50, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon (name: "Fried Egg", price: 1.49),
        Addon (name: "Spicy Mayo", price: 0.99),
        Addon (name: "Bacon", price: 1.49),
        ]
      ),
    Food(
      name: "Aloha Burger", 
      description: " Burger typically topped with grilled or caramelized pineapple.", 
      imagePath: "lib/images/burgers/Aloha Burgers.jpeg", 
      price: 9.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon (name: "Teriyaki Glaze", price: 0.99),
        Addon (name: "Extra Pineapple", price: 0.99),
        Addon (name: "Bacon", price: 1.49),
        ]
      ),
    //Sides
    Food(
      name: "Loadedfries side", 
      description: " A dish consisting of French fries topped with various ingredients.", 
      imagePath: "lib/images/sides/loadedfries side.jpeg", 
      price: 3.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon (name: "Extra Cheese", price: 0.99),
        Addon (name: "Spicy Mayo", price: 1.49),
        Addon (name: "Bacon Bits", price: 1.49),
        ]
      ),
      Food(
      name: "Mac side", 
      description: "Refers to a side dish typically made with macaroni pasta, cheese, and a creamy sauce.", 
      imagePath: "lib/images/sides/mac side.jpeg", 
      price: 3.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon (name: "Extra Cheese", price: 0.99),
        Addon (name: "Spicy Mayo", price: 1.49),
        Addon (name: "Parmesan Dust", price: 1.99),
        ]
      ),
      Food(
      name: "Onion Rings side", 
      description: " Sliced onions dipped in batter and deep-fried until golden and crispy, creating a deliciously crunchy side dish or snack.", 
      imagePath: "lib/images/sides/Onion Rings side.jpeg", 
      price: 3.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon (name: "Ranch Dip", price: 0.99),
        Addon (name: "Spicy Mayo", price: 1.49),
        Addon (name: "Parmesan Dust", price: 1.99),
        ]
      ),
      Food(
      name: "Garlic bread", 
      description: " Slices of bread, typically French or Italian, topped with a mixture of butter, minced garlic, and herbs, then baked until golden and crispy, offering a savory and aromatic accompaniment to various meals or enjoyed on its own as a flavorful snack.", 
      imagePath: "lib/images/sides/garlic bread.jpeg", 
      price: 4.59, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon (name: "Extra Garlic", price: 0.99),
        Addon (name: "Mozzarella Cheese", price: 1.49),
        Addon (name: "Marinara Dip", price: 1.99),
        ]
      ),
      Food(
      name: "Sweet Potato Side", 
      description: " A savory dish featuring sweet potatoes, often roasted, mashed, or baked, seasoned with various herbs, spices, and sometimes sweeteners, served as a flavorful accompaniment to main dishes.", 
      imagePath: "lib/images/sides/sweet potato side.jpeg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon (name: "Sour Cream", price: 0.99),
        Addon (name: "Bacon Bits", price: 1.49),
        Addon (name: "Green Onions", price: 0.99),
        ]
      ),
    //deserts
    Food(
      name: "Tiramisu", 
      description: "A classic Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder, often served chilled.", 
      imagePath: "lib/images/desserts/tiramisu.jpeg", 
      price: 3.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon (name: "Raspberry Sauce", price: 0.99),
        Addon (name: "Cream Cheese Icing", price: 1.49),
        Addon (name: "Chocolate Sprinkles", price: 0.99),
        ]
      ),
    Food(
      name: "Donuts", 
      description: "Sweet fried dough confections often coated with sugar, glaze, or frosting, available in various flavors and shapes.", 
      imagePath: "lib/images/desserts/donuts.jpeg", 
      price: 2.75, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon (name: "Raspberry Sauce", price: 0.99),
        Addon (name: "Cream Cheese Icing", price: 1.49),
        Addon (name: "Chocolate Sprinkles", price: 0.99),
        ]
      ),
      Food(
      name: "Lemon Cheesecake", 
      description: "Creamy cheesecake flavored with tangy lemon zest and juice, topped with lemon curd or fresh lemon slices.", 
      imagePath: "lib/images/desserts/lemon cheesecake.jpeg", 
      price: 3.50, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon (name: "Raspberry Sauce", price: 0.99),
        Addon (name: "Cream Cheese Icing", price: 1.49),
        Addon (name: "Chocolate Sprinkles", price: 0.99),
        ]
      ),
      Food(
      name: "Churros", 
      description: "Fried dough pastries coated in sugar, served with dipping sauce.", 
      imagePath: "lib/images/desserts/Churros.jpeg", 
      price: 4.50, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon (name: "Raspberry Sauce", price: 0.99),
        Addon (name: "Cream Cheese Icing", price: 1.49),
        Addon (name: "Chocolate Sprinkles", price: 0.99),
        ]
      ),
      Food(
      name: "Belgian Waffles", 
      description: "Fluffy and light waffles made from a yeast-based batter, typically served with toppings such as whipped cream, fresh fruits, syrup, or chocolate sauce.", 
      imagePath: "lib/images/desserts/Belgian Waffles.jpeg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon (name: "Raspberry Sauce", price: 0.99),
        Addon (name: "Cream Cheese Icing", price: 1.49),
        Addon (name: "Chocolate Sprinkles", price: 0.99),
        ]
      ),
      //SALADS
      Food(
      name: "Southwest salad", 
      description: "A zesty and flavorful salad featuring ingredients commonly found in Southwestern cuisine, such as black beans, corn, avocado, tomatoes, and spicy dressings, often served with grilled chicken or shrimp.", 
      imagePath: "lib/images/salads/southwest salad.jpeg", 
      price: 3.50, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon (name: "Avocado", price: 0.99),
        Addon (name: "Grilled Chicken", price: 1.99),
        Addon (name: "Extra shrimp", price: 2.99),
        ]
      ),
      Food(
      name: "Quinoa salad", 
      description: "A nutritious and versatile dish made with cooked quinoa mixed with various vegetables, herbs, and dressings, often including ingredients like cucumbers, tomatoes, bell peppers, and a tangy vinaigrette.", 
      imagePath: "lib/images/salads/quinoa salad.jpeg", 
      price: 3.50, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon (name: "Avocado", price: 0.99),
        Addon (name: "Feta Cheese", price: 1.99),
        Addon (name: "Grilled Chicken", price: 2.99),
        ]
      ),
      Food(
      name: "Greek salad", 
      description: "A fresh and vibrant dish featuring tomatoes, cucumbers, red onions, olives, and feta cheese, tossed with olive oil and seasoned with herbs like oregano and mint.", 
      imagePath: "lib/images/salads/greek salad.jpeg", 
      price: 6.25, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon (name: "Feta Cheese", price: 0.99),
        Addon (name: "Kalamata Olives", price: 1.99),
        Addon (name: "Grilled Shrimp", price: 2.99),
        ]
      ),
      Food(
      name: "Caesar salad", 
      description: "A classic combination of crisp romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.", 
      imagePath: "lib/images/salads/Caesar salad.jpeg", 
      price: 7.75, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon (name: "Grilled Chicken", price: 0.99),
        Addon (name: "Anchovies", price: 1.49),
        Addon (name: "Extra Parfesan", price: 1.99),
        ]
      ),
      Food(
      name: "Chicken Salad ", 
      description: "A zesty medley of chicken strips, crisp veggies, and tangy dressing.", 
      imagePath: "lib/images/salads/Asian Chicken Salad.jpeg", 
      price: 3.50, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon (name: "Sour Cream", price: 0.99),
        Addon (name: "Pico de Gallo", price: 1.49),
        Addon (name: "Guacamole", price: 1.99),
        ]
      ),
      //DRINKS
      Food(
      name: " Mint and Lime", 
      description: "Mint and Lime Refreshers are invigorating beverages made by combining fresh mint leaves, lime juice, sweetener, and sparkling water, served over ice for a crisp and revitalizing drink.", 
      imagePath: "lib/images/drinks/ Mint and Lime Refreshers.jpeg", 
      price: 2.50, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon (name: "0.33L", price: 0.99),
        Addon (name: "0.5L", price: 1.99),
        Addon (name: "0.750L", price: 2.99),
        ]
      ),
      Food(
      name: "Mango-Lassi", 
      description: "A refreshing Indian drink made with ripe mangoes, yogurt, sugar, and sometimes flavored with cardamom or rose water, blended until smooth and served chilled.", 
      imagePath: "lib/images/drinks/Mango-Lassi .jpeg", 
      price: 4.45, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon (name: "0.33L", price: 0.99),
        Addon (name: "0.5L", price: 1.99),
        Addon (name: "0.750L", price: 2.99),
        ]
      ),
      Food(
      name: "Milkshake", 
      description: "A cold, creamy beverage made by blending milk, ice cream, and flavorings such as fruit, chocolate, or vanilla syrup.", 
      imagePath: "lib/images/drinks/milkshake.jpeg", 
      price: 5.00, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon (name: "0.33L", price: 0.99),
        Addon (name: "0.5L", price: 1.99),
        Addon (name: "0.750L", price: 2.99),
        ]
      ),
      Food(
      name: "Tahini coffee ", 
      description: "A unique beverage that combines the rich, nutty flavor of tahini with the bold taste of coffee, creating a creamy and satisfying drink.", 
      imagePath: "lib/images/drinks/tahini coffee.jpeg", 
      price: 3.50, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon (name: "Extra Shot of Espresso", price: 0.99),
        Addon (name: "Hazelnut Syrop", price: 0.99),
        Addon (name: "Whipped Cream", price: 1.35),
        ]
      ),
      Food(
      name: "Watermelon lemo", 
      description: "A refreshing beverage made from freshly squeezed lemon juice combined with pureed watermelon, offering a sweet and tangy flavor perfect for hot summer days.", 
      imagePath: "lib/images/drinks/watermelon lemonade.jpeg", 
      price: 2.25, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon (name: "0.33L", price: 0.99),
        Addon (name: "0.5L", price: 1.99),
        Addon (name: "0.750L", price: 2.99),
        ]
      ),
  ];

  List<Food> get menu => _menu;

  List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;


void addToCart(Food food, List<Addon> selectedAddons) {  
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    bool isSameFood = item.food == food;
    bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameAddons && isSameFood;
  });

  if (cartItem != null) {
    cartItem.quantity++;
  } else {
    _cart.add(CartItem(food: food, selectedAddons: selectedAddons, quantity: 1));
  }
  
  notifyListeners();
}



  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1){
      if (_cart[cartIndex].quantity >1){
        _cart[cartIndex].quantity--;
      }
      else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice(){
    double total = 0.0;
    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearCart(){
    cart.clear();
    notifyListeners();
  }

  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
    String formattedDate = DateFormat('yyyy-MM-dd HH: mm: ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem. food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("Add-ons: ${_formatAddons (cartItem. selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }

}