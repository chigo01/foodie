import 'package:flutter/material.dart';
import 'package:foodie/utils/constant.dart';

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
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    networkService?.getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller;
  }
NetworkService? networkService = NetworkService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column( children:[Container(
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
                ],
              ),
          ),
      // ignore: prefer_const_literals_to_create_immutables
    Expanded(

      child: TabBarView(controller: _controller, children:  [
       FutureBuilder<Recipe1>(
         future: networkService?.getData(),
         builder: (context, snapshot){
           if(snapshot.hasData){
            Recipe1? recipe = snapshot.data;
             return Text(recipe?.q ?? '');
           }
           else if(snapshot.hasError){
             return Text(snapshot.error.toString(), style: const TextStyle(color: Colors.white),);
           }
           return const Center(child: CircularProgressIndicator(color: Colors.white,));
         }
       ),
         Icon(Icons.directions_transit, size: 350),
        Icon(Icons.directions_car, size: 350),
        Icon(Icons.directions_bike, size: 350),
        Icon(Icons.directions_boat, size: 350),
      ]),
    ),]
    ),
        ),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
