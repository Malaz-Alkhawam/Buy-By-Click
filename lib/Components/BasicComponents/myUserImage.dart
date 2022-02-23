import 'package:flutter/material.dart';

class MyUserImage extends StatelessWidget {
  final String imagePath;
  const MyUserImage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.brown[100],
      radius: MediaQuery.of(context).size.width * 0.05,
      backgroundImage: AssetImage('images/profile picture.jpg'),
    );
  }
}
