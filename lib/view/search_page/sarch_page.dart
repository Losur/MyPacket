import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/text/text_components.dart';
import '../product/product_row/big/big_product_row.dart';
import '../product/product_row/big/big_product_multiple_row.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);


  @override
  _SearchPage createState() => _SearchPage();
}

List<String> get dropdownItems {
  List<String> menuItems = [
    "Dinner",
    "Light dinner",
    "Hard dinner",
    "Another dinner",
  ];
  return menuItems;
}



class _SearchPage extends State<SearchPage> {
  bool isSearched = false;
  String searchText = "";

  searchBody(bool isSearched, String searchText) {
    if (isSearched) {
      return searchResponse(searchText);
    }
    else {
      return searchPlaceholder();
    }
  }

  searchResponse(String searchText) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 12),
            child: const BigProductRow("Based on your search")
        ),
        Text("Results for " + searchText),
        const BigProductMultipleRow([
          BigProductRow("First")
        ])
      ],
    );
  }

  searchPlaceholder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
            "assets/search/empty_search_placeholder.svg"),
        Container(
          margin: const EdgeInsets.only(top: 16.5),
          child: TextSubtitle.normalWeight("We don’t have anything from\nsuggestions to you"),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    dropdownSearchDecoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      hintText: "Apples, dinner and etc...",
                    ),
                    showSearchBox: true,
                    items: dropdownItems,
                    onChanged: (String? value) {
                      setState(() {
                        isSearched = true;
                        searchText = value!;
                      });
                    },
                  ),
                  searchBody(isSearched, searchText)
                ],
              ),
            )),
      )
    );
  }
}
