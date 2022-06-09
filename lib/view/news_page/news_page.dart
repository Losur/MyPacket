import 'package:flutter/material.dart';
import 'package:my_packet/view/product/product_card/big/big_product_card.dart';
import 'package:my_packet/view/recipe/recipe_card/big/recipe_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPage createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {
  final _menuItems = <Widget>[
    BigRecipeCard("Intresting breakfast", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/1.png"),
    BigRecipeCard("Quick Chicken Piccata ", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/2.png"),
    BigRecipeCard("Greek Cheese Pie", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/3.png"),
    BigRecipeCard("Garlic Shrimp Kabobs", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/4.png"),
    BigRecipeCard("Dinner", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/1.png"),
    BigRecipeCard("Dinner", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/1.png"),
    BigRecipeCard("Intresting breakfast", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/3.png"),
    BigRecipeCard("Intresting breakfast", "Awesome dinner with your friends","Kcl: 400 P:15 F:10 C: 100", "assets/images/2.png"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold (
        body: Container (
          margin: EdgeInsets.all(12),
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _menuItems.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 12,
              maxCrossAxisExtent: MediaQuery.of(context).size.height,
              childAspectRatio: 3/1),
            itemBuilder: (context, index) {
              return _menuItems[index];
            },
          ),
        )
      )
    );
  }

}