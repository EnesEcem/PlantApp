import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/body.dart';
import 'package:plant_app/pages/my_bottomnavbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset('lib/assets/icons/menu.png'),
      ),
    );
  }
}
