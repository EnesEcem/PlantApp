import 'package:flutter/material.dart';

import '../constants.dart';
import 'icon_card.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: Image.asset("lib/assets/icons/back_arrow.png"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: 'lib/assets/icons/sun.png'),
                    IconCard(icon: 'lib/assets/icons/icon_2.png'),
                    IconCard(icon: 'lib/assets/icons/icon_3.png'),
                    IconCard(icon: 'lib/assets/icons/icon_4.png'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: kPrimaryColor.withOpacity(0.25),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("lib/assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
