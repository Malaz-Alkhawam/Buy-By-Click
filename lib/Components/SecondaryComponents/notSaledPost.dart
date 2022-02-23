import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myDatePiece.dart';
import 'package:buy_by_click/Components/BasicComponents/myPostImagesListView.dart';

class NotSaledPost extends StatelessWidget {
  final String buyerName; ///// userModel
  final ImageProvider<Object> buyerImage; ///// userModel
  final String date;
  final String postRate;

  final List<Widget> images;
  final String productStatus;
  final String price;

  const NotSaledPost(
      {Key key,
      this.buyerName,
      this.date,
      this.images,
      this.productStatus,
      this.price,
      this.buyerImage,
      this.postRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 57, 57, 57).withOpacity(0.9),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            MyDatePiece(
              date: '14/12/2021',
            ),
            MyPostImagesListView(
              images: images,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow[200],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.030,
                      child: Center(
                        child: Text(
                          postRate,
                          style: TextStyle(
                            color: Colors.brown[100],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: MediaQuery.of(context).size.height * 0.035,
                  child: Center(
                    child: Text(
                      productStatus,
                      style: TextStyle(color: Colors.yellow[200], fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.06,
                  height: MediaQuery.of(context).size.height * 0.034,
                  child: Icon(
                    Icons.price_change,
                    color: Colors.yellow[200],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.025,
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.brown[100],
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
