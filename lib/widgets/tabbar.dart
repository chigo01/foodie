import 'package:flutter/material.dart';
import 'package:foodie/utils/constant.dart';
import 'package:foodie/widgets/cards/recipecards.dart';
import 'package:foodie/widgets/cards/recipecards1.dart';
import 'package:foodie/widgets/cards/recipecards5.dart';
import 'package:foodie/widgets/scaffold.dart';

import '../models/recipe.dart';
import '../services/service.dart';
import 'cards/recipecards2.dart';
import 'cards/recipecards3.dart';
import 'cards/recipecards4.dart';

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
                  child: RecipeCard1(),
                ),
              ),
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard2(),
                ),
              ),

              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard3(),
                ),
              ),
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard4(),
                ),
              ),
              TabBarColor(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RecipeCard5(),
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
