import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("lib/assets/icons/flower.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("lib/assets/icons/heart-icon.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("lib/assets/icons/sun.png"),
          ),
        ],
      ),
    );
  }
}
