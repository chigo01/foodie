import 'package:flutter/material.dart';
import 'package:foodie/utils/constant.dart';
import 'package:foodie/widgets/recipecards.dart';
import 'package:foodie/widgets/scaffold.dart';

import '../models/recipe.dart';
import '../services/service.dart';

class TabBarWidget extends StatefulWidget {
  TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

TabController? _controller;

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  NetworkService services = NetworkService();
  // late List<Recipe> recipes;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this);
   // services.getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            child: TabBar(
              controller: _controller,
              indicatorColor: kgreen,
              isScrollable: true,
              unselectedLabelColor: Colors.white12,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                 Tab(text: 'Popular'),
                Tab(text: 'BreakFast'),
                Tab(text: 'Lunch'),
                Tab(text: 'Dinner'),
                Tab(text: 'Snack'),
                Tab(text: 'Chicken'),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          Expanded(
            child: TabBarView(controller: _controller, children: const [
              //TabColor is a scaffold for the tabview color
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard(),
                ),
              ),
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard(),
                ),
              ),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_bike, size: 350),
              Icon(Icons.directions_boat, size: 350),
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard(),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
