import 'package:flutter/material.dart';

import 'big_product_row.dart';

class BigProductMultipleRow extends StatefulWidget {
  final List<BigProductRow> rows;
  const BigProductMultipleRow(this.rows, {Key? key}) : super(key: key);

  @override
  _BigProductMultipleRow createState() => _BigProductMultipleRow();
}

class _BigProductMultipleRow extends State<BigProductMultipleRow> {
  
  generateResultView(List<BigProductRow> row) {
    var result = <Widget>[];
    for(int i = 0; i < row.length; i++) {

      if (i == row.length - 1) {
        result.add(row[i]);
      }
      else {
        result.add(Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: row[i],
        ));
      }

    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
      child: Column(
        children: generateResultView(widget.rows)
      ),
    );
  }

}