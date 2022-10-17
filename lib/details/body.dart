import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/details/title_price.dart';
import 'image_icon_card.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(size: size),
          TitleAndPrice(country: 'Russia', price: 440, title: 'Angelica'),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20)))),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
