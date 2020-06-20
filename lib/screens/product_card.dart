import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../product.dart';

class Productcard extends StatelessWidget {
  const Productcard({
    Key key, this.it, this.product, this.press,
  }) : super(key: key);
  final int it;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(height: 160,
      margin: EdgeInsets.symmetric(horizontal: kDefaulPadding,
          vertical: kDefaulPadding/2),
      //color: Colors.blueAccent,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: it.isEven?kBlueColor:kSecondaryColor,
                  boxShadow: [kDefaultShadow]
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(top: 0,right: 0 ,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaulPadding),
                  height: 160, width: 200,
                  child: Image.asset(product.image,fit: BoxFit.cover,),
            ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width -200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaulPadding),
                      child: Text(product.title,
                        style: Theme.of(context).textTheme.button,),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kDefaulPadding*1.5,
                        vertical: kDefaulPadding/4,
                      ),
                      decoration: BoxDecoration(color: kSecondaryColor,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22))
                      ),
                      child: Text("\$${product.price}",style: Theme.of(context).textTheme.button,),

                    )
                  ],
                ),

              ),

            )
          ],
        ),
      ),);
  }
}

