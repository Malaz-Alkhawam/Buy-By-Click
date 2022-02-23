import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myBar.dart';
import 'package:buy_by_click/Components/BasicComponents/myDrawer.dart';
import 'package:buy_by_click/Components/BasicComponents/myPostImage.dart';
import 'package:buy_by_click/Components/SecondaryComponents/inProgressBuyPosts.dart';
import 'package:buy_by_click/Components/SecondaryComponents/postList.dart';
import 'package:buy_by_click/Components/SecondaryComponents/purhasesPosts.dart';

class Purchases extends StatefulWidget {
  static final String id = "purchases";
  const Purchases({Key key}) : super(key: key);

  @override
  State<Purchases> createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Colors.brown[100],
        appBar: MyBar(
          isHome: false,
          type: "",
          onPressed: () {},
          tabs: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "In Progress",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Purchases",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        endDrawer: MyDrawer(),

        body: TabBarView(
          children: [
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "Product",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "Product",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "Product",
                ),
                InProgressBuyPosts(
                  date: "12/1/2012",
                  productName: "Product",
                ),
              ],
            ),

            ////////////////////

            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                PurchasesPosts(
                  date: "12/1/2021",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "Ahmad",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "Samer",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "Fadi",
                ),
                PurchasesPosts(
                  date: "12/1/2021",
                  images: [
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                    MyPostImage(
                      imagePath: 'images/furniture.jpg',
                    ),
                  ],
                  postRate: "7",
                  price: "880",
                  salerImage: AssetImage('images/profile picture.jpg'),
                  salerName: "Mohemmed",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
