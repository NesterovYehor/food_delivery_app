import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/components/sliver_app_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, vm, child) => Scaffold(
        drawer: MyDrawer(onTap: vm.auth.logOut,),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
             MySliverAppBar(
              title: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: MyTabBar(tabController: _tabController),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25, 
                    endIndent: 25, 
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocation(
                    onTap: () => vm.openLocationSearchBox(context), 
                    location: vm.location,
                  ),
                  MyDescriptionBox(),
                ],
              ),
            )
          ],
          body: TabBarView(
            controller: _tabController,
            children: vm.getFoodInThisCategory(vm.restaurant.menu)
            ),
        ),
      ),
    );
  }
}