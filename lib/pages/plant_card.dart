import 'package:flutter/material.dart';
import 'package:plant_app/details/details_screen.dart';

import '../constants.dart';

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    color: kPrimaryColor.withOpacity(0.1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            country: 'Russia',
            image: 'lib/assets/images/image_1.png',
            price: 440,
            title: 'Angelica',
            press: () {
              //Sorcaz burayı
              // Navigator.push(context,
              // MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            country: 'Russia',
            image: 'lib/assets/images/image_2.png',
            price: 400,
            title: 'Samantha',
            press: () {},
          ),
          RecomendPlantCard(
            country: 'Russia',
            image: 'lib/assets/images/image_3.png',
            price: 240,
            title: 'Samantha',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            size: size,
            image: 'lib/assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeaturePlantCard(
            size: size,
            image: 'lib/assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}
