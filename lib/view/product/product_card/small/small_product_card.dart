import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../projectColors.dart';

class SmallProductCard extends StatefulWidget {
  const SmallProductCard({Key? key}) : super(key: key);

  @override
  _SmallProductCard createState() => _SmallProductCard();
}

class _SmallProductCard extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body: Container(
        margin: const EdgeInsets.only(top: 4, left: 4, right: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6), //border corner radius
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.15), //color of shadow
              spreadRadius: 3, //spread radius
              blurRadius: 2, // blur radius
              offset: const Offset(0, 1), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: SizedBox(
          width: 110,
          height: 158,
          child: Column(
            children: [
              // SvgPicture.network(
              //   'https://www.svgrepo.com/download/33352/lock.svg',
              //   semanticsLabel: 'SVG From Network',
              //   height: 112,
              //   placeholderBuilder: (BuildContext context) => Container(
              //       padding: const EdgeInsets.all(30.0),
              //       child: const CircularProgressIndicator()), //placeholder while downloading file.
              // ),
              SizedBox(
                height: 112,
                child: SizedBox(
                  height: 75,
                  width: 44,
                  child:SvgPicture.asset(
                      "assets/product_card/small_template_icon.svg", //asset location
                      semanticsLabel: 'Small card template'
                  ),
                ),
              ),
              Divider(
                color: Colors.black.withOpacity(0.15),
                height: 1,
                thickness: 1,
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
                    child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Milk",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Segue-UI'
                              )
                          ),
                        ),
                        Expanded(child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("500ml",
                              style: TextStyle(
                                  color: Color(ProjectColors.textSecondaryColor),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Segue-UI'
                              )),
                        ))
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ), backgroundColor: const Color(ProjectColors.backgroundColor),
    );
  }

}