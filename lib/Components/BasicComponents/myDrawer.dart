import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myDrawerButton.dart';
import 'package:buy_by_click/Pages/homePage.dart';
import 'package:buy_by_click/Pages/purchases.dart';
import 'package:buy_by_click/Pages/sales.dart';
import 'package:buy_by_click/Services/consts.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black26.withOpacity(0.2),
      ),
      child: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(myPicture),
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Center(
                  child: Text(
                    myName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        myPhoneNumber,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.4),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Main Page',
                  icon: Icons.home_outlined,
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.id);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Purchases',
                  icon: Icons.shopping_bag_outlined,
                  onPressed: () {
                    Get.to(Purchases());
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Sales',
                  icon: Icons.local_offer_outlined,
                  onPressed: () {
                    Get.to(Sales());
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Points',
                  icon: Icons.star_rate_outlined,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.4),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Settings',
                  icon: Icons.settings,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'About',
                  icon: Icons.info_outline,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                MyDrawerButton(
                  text: 'Logout',
                  icon: Icons.cancel_outlined,
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
