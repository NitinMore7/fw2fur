import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key, this.onchanged,
  }) : super(key: key);
  final ValueChanged onchanged;
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(kDefaulPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaulPadding,
          vertical: kDefaulPadding/4),
      child: TextField(
        onChanged: onchanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(icon: SvgPicture.asset("assets/icons/search.svg"),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white)
        ),
      ),decoration: BoxDecoration(color: Colors.white.withOpacity(0.4)
          ,borderRadius: BorderRadius.circular(20)),
    );
  }
}
