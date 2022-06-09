import 'package:flutter/material.dart';
import 'package:my_packet/projectColors.dart';
import 'package:my_packet/view/components/text/text_components.dart';

class BigRecipeCard extends StatelessWidget {
  final String title;
  final String body;
  final String kcl;
  final String imagePath;

  BigRecipeCard(this.title, this.body, this.kcl, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 117,
          margin: const EdgeInsets.only(top: 4, left: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6), //border corner radius
            boxShadow: [
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
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  width: 133,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 14, top: 4, right: 4, bottom: 6),
                      child:Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.star_border, color: Color(ProjectColors.textSecondaryColor),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextSubtitle(title, FontWeight.w400),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextSubregular(body, 10.0, FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: TextSubregular(kcl, 10.0, FontWeight.w400),
                        ),

                      ],
                    ),
                  ),
                 ),
              ],
            ),
          )),
    );
  }
}
