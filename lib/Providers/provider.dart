import 'package:flutter/cupertino.dart';
import 'package:buy_by_click/Components/SecondaryComponents/postContainer.dart';
import 'package:buy_by_click/Components/SecondaryComponents/postList.dart';

class Providerf extends ChangeNotifier {
  Widget postListContent = PostList(
    scrollDirection: Axis.vertical,
    listContent: [
      PostContainer(
        userName: 'Diana',
        postImage: 'images/product 4.png',
        rate: '20',
        postContent: 'Direct',
        price: '6',
        userImage: 'images/person 1.jpg',
      ),
      PostContainer(
        userName: 'Salma',
        postImage: 'images/product 6.png',
        rate: '18',
        postContent: 'Undirect',
        price: '1',
        userImage: 'images/person 2.png',
      ),
      PostContainer(
        userName: 'Samer',
        postImage: 'images/product 3.png',
        rate: '18',
        postContent: 'Direct',
        price: '10',
        userImage: 'images/person 3.jpg',
      ),
    ],
  );

  void change(Widget postContent /*PostModel */) {
    postListContent = postContent;
    notifyListeners();
  }
}
