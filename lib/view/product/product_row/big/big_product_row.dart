import 'package:flutter/material.dart';

import '../../../components/text/text_components.dart';
import '../../product_card/big/big_product_card.dart';

class BigProductRow extends StatefulWidget {
  final String title;
  const BigProductRow(this.title, {Key? key}) : super(key: key);

  @override
  _BigProductRow createState() => _BigProductRow();
}

class _BigProductRow extends State<BigProductRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(bottom: 12.0),
              child: TextTitle.customWeight(widget.title, FontWeight.w600)
            )
        ),
        SizedBox(
          width: double.infinity,
          height: 250,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 3 / 2,),
            itemBuilder: (context, index) {
              return const BigProductCard();
            },
          ),
        ),
      ],
    );
  }
}