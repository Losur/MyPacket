import 'package:flutter/material.dart';
import 'package:my_packet/view/components/text/text_components.dart';
import 'package:my_packet/view/product/product_row/big/big_product_multiple_row.dart';
import '../product/product_row/big/big_product_row.dart';
import '../product/product_row/small/small_product_row.dart';
import '../product/product_card/big/big_product_card.dart';
import '../../projectColors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  var dummyData = ["1", "2", "3", "4", "5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container (
                  margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Column(
                    children: [
                      const ProductRow("What's order today"),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                            child: const TextTitle.onlyText("Ideas for breakfast")
                          )
                      ),
                      const BigProductMultipleRow([
                        BigProductRow("Meals"),
                        BigProductRow("Food")
                      ])
                    ],
                  ),
                )
            )
        ),
        backgroundColor: const Color(ProjectColors.backgroundColor),);
  }
}
