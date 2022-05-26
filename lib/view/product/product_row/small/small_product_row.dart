import 'package:flutter/material.dart';
import '../../product_card/small/small_product_card.dart';

class ProductRow extends StatefulWidget {
  final String title;
  const ProductRow(this.title, {Key? key}) : super(key: key);

  @override
  _ProductRow createState() => _ProductRow();
}

class _ProductRow extends State<ProductRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                    widget.title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Segue-UI',)
                ),
              )
          ),
          Container(
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15), //color of shadow
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0, 0),
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12.0),
                      child: const Text(
                          "Your previous interested",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Segue-UI',)
                      ),
                    )
                ),
                SizedBox(
                  width: double.infinity,
                  height: 170,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 3 / 2,
                        mainAxisSpacing: 12
                    ),
                    itemBuilder: (context, index) {
                      return const SmallProductCard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}