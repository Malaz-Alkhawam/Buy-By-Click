import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myBar.dart';
import 'package:buy_by_click/Components/BasicComponents/myDrawer.dart';
import 'package:buy_by_click/Components/SecondaryComponents/typeContainer.dart';
import 'package:buy_by_click/Pages/Types/typePage.dart';
import 'package:buy_by_click/Services/consts.dart';
import 'package:buy_by_click/Services/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static final String id = 'homePage';
  //  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {
        Services.changeBarColor(scrollController);
      });
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyBar(
        isHome: true,
        type: '',
      ),
      endDrawer: MyDrawer(),
      backgroundColor: backGroundGeneralColor,
      body: ListView(
        controller: scrollController,
        children: [
          TypeContainer(
            typeImage: 'images/furniture.jpg',
            typeName: 'Furnitures',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'Furnitures',
                  typeImage: 'images/furniture.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/electronic.jpg',
            typeName: 'ُElectronic',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'ُElectronic',
                  typeImage: 'images/electronic.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/clothes.jpg',
            typeName: 'Clothes',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'Clothes',
                  typeImage: 'images/clothes.jpg',
                ),
              );
            },
          ),
          TypeContainer(
            typeImage: 'images/mix.png',
            typeName: 'Mix',
            onPressed: () {
              Services.changeBarToNormal();
              Get.to(
                () => TypePage(
                  typeName: 'Mix',
                  typeImage: 'images/mix.png',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
