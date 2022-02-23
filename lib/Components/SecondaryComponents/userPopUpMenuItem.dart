import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myUserImage.dart';

class UserPopUpMenuItem extends StatelessWidget {
  final userImage;
  final postRate;

  const UserPopUpMenuItem({Key key, this.userImage, this.postRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '15',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Malaz',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                MyUserImage(
                  imagePath: 'images/profile picture.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
