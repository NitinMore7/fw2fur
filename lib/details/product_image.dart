

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Productposter extends StatelessWidget {
  const Productposter({
    Key key,
    @required this.size, this.image,
  }) : super(key: key);
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: kDefaulPadding),
      height: size.width*0.8,
      color: kBackgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(height: size.width*0.7,
            width: size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(image,
            height: size.width*0.75,
            width: size.width*0.75,
            fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
