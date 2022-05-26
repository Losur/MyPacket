import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../projectColors.dart';

class BigProductCard extends StatefulWidget {
  const BigProductCard({Key? key}) : super(key: key);

  @override
  _BigProductCard createState() => _BigProductCard();
}

class _BigProductCard extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: Container(
          margin: const EdgeInsets.only(top: 4, left: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6), //border corner radius
            boxShadow:[
              BoxShadow(
                color: Colors.grey.withOpacity(0.15), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 2, // blur radius
                offset: const Offset(0, 1), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: SizedBox(
            width: 144,
            height: 241,
            child: Column(
              children: [
                SizedBox(
                  height: 135,
                  child: SvgPicture.asset(
                      "assets/product_card/small_template_icon.svg",
                      width: 58,
                      height: 100,
                      color: Colors.black,
                      semanticsLabel: 'A place holder for small product'
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Divider(
                    color: Colors.black.withOpacity(0.15),
                    height: 4,
                    thickness: 1,
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: const Text(
                                "Milk",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Segue-UI'
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("""
Kilocalories per 100g of product: 

Proteins: 2,8
Fats: 3,2
Carbohydrates: 47
Kilocalories: 58""",
                              style: TextStyle(
                                  color: Color(ProjectColors.textSecondaryColor),
                                  fontSize: 8.0,
                                  fontFamily: 'Segue-UI'
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        ), backgroundColor: const Color(ProjectColors.backgroundColor)
    );
  }

}