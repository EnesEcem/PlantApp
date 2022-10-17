import 'package:flutter/material.dart';
import 'package:plant_app/pages/header_with_searchbox.dart';
import 'package:plant_app/pages/plant_card.dart';
import 'package:plant_app/pages/title_with_more.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(press: () {}, title: 'Recommended'),
          RecomendsPlants(),
          TitleWithMoreBtn(press: () {}, title: 'Featured Plants'),
          PlantCard(
            size: size,
          )
        ],
      ),
    );
  }
}
