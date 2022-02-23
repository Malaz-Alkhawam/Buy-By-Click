import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myBar.dart';
import 'package:buy_by_click/Components/BasicComponents/myDrawer.dart';
import 'package:buy_by_click/Components/BasicComponents/myPostImage.dart';
import 'package:buy_by_click/Components/SecondaryComponents/inProgressSalePosts.dart';
import 'package:buy_by_click/Components/SecondaryComponents/notSaledPost.dart';
import 'package:buy_by_click/Components/SecondaryComponents/postList.dart';
import 'package:buy_by_click/Components/SecondaryComponents/saledPost.dart';

class Sales extends StatefulWidget {
  static final String id = "purchases";
  const Sales({Key key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                  "Soled",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Un Soled",
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
                InProgressSalePosts(
                  date: "12/12/2011",
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
                  postRate: "12",
                  price: "200",
                  productStatus: "Direct",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
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
                  postRate: "12",
                  price: "200",
                  productStatus: "Direct",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
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
                  postRate: "12",
                  price: "200",
                  productStatus: "Direct",
                ),
                InProgressSalePosts(
                  date: "12/12/2011",
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
                  postRate: "12",
                  price: "200",
                  productStatus: "Direct",
                ),
              ],
            ),
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                SaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                SaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                SaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                SaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                SaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
              ],
            ),
            PostList(
              scrollDirection: Axis.vertical,
              listContent: [
                NotSaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                NotSaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                NotSaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
                NotSaledPost(
                  productStatus: 'Direct',
                  buyerName: 'Malaz',
                  date: '15/12/2021',
                  postRate: '15',
                  price: '500',
                  buyerImage: AssetImage('images/profile picture.jpg'),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
