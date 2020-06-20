import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/details/product_image.dart';

import '../product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaulPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Hero(
                    tag: '${product.id}',
                    child: Productposter(
                      size: size,
                      image: product.image,)
                )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaulPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    ColorDot(fillcolor: Color(0xFF80989A),isselected: true,),
                      ColorDot(fillcolor: Color(0xFFFF5200),),
                      ColorDot(fillcolor: kPrimaryColor,),

                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaulPadding/2),
                  child: Text(product.title,
                    style: Theme.of(context).textTheme.headline6,),
                ),
                Text('\$${product.price}',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                color: kSecondaryColor),),
                Padding(padding: EdgeInsets.symmetric(vertical: kDefaulPadding/2),
                child:Text(product.description,style: TextStyle(color: kTextLightColor),
                ) ,),
                SizedBox(height: kDefaulPadding,)
              ],
            ),
          ),

        Container(margin: EdgeInsets.all(kDefaulPadding,),
        padding: EdgeInsets.symmetric(horizontal: kDefaulPadding,vertical: kDefaulPadding/2),
        decoration: BoxDecoration(color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),),
          child: Row(
            children: <Widget>[
              SvgPicture.asset("assets/icons/chat.svg",height: 18,),
              SizedBox(width: kDefaulPadding/2,),
              Text("Chat",style: TextStyle(
                color: Colors.white
              ),),
              Spacer(),
              FlatButton.icon(onPressed: (){},
                icon: SvgPicture.asset("assets/icons/shopping-bag.svg",height: 18,),
                  label: Text("Add to Cart",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        )

        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,  this.fillcolor, this.isselected=false,
  }) : super(key: key);
final Color fillcolor;
final bool isselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaulPadding/2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(shape: BoxShape.circle,
      border: Border.all(color: isselected?Color(0xFF707070):Colors.transparent)
      ),
      child: Container(decoration: BoxDecoration(shape: BoxShape.circle,
      color: fillcolor),),
    );
  }
}
