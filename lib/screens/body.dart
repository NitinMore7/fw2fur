import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/details/details_screen.dart';
import 'package:furnitureapp/product.dart';
import 'package:furnitureapp/screens/product_card.dart';
import 'package:furnitureapp/screens/searchbox.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onchanged: (value){},),
          Categorylist(),
          SizedBox(height: kDefaulPadding/2,),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),

                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context,index)=> Productcard(
                      it: index,
                      product: products[index],
                      press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>DetailsScreen(product: products[index],),
                        )
                      );
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
