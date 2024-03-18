import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_recipt.dart';
import 'package:food_delivery_app/services/firestore_service.dart';
import 'package:food_delivery_app/services/restauran_service.dart';
import 'package:provider/provider.dart';

class DeliveryProgressView extends StatefulWidget {
  const DeliveryProgressView({super.key});

  @override
  State<DeliveryProgressView> createState() => _DeliveryProgressViewState();
}

class _DeliveryProgressViewState extends State<DeliveryProgressView> {
  FireStoreService db = FireStoreService();

  @override 
  void initState(){
    super.initState();

    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyRecipt()
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person)
              ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Yehor Nesterov", style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold),),
              Text("Driver", style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),)
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.message, color: Theme.of(context).colorScheme.primary)
                  ),
              ),
              const SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.phone, color: Colors.green,)
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }
}