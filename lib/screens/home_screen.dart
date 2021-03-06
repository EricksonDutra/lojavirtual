import 'package:flutter/material.dart';
import 'package:lojaonline/tabs/home_tab.dart';
import 'package:lojaonline/tabs/products_tab.dart';
import 'package:lojaonline/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produto"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.yellowAccent,
        ),
      ],
    );
  }
}
