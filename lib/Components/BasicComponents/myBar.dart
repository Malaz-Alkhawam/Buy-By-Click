import 'package:flutter/material.dart';

import '../../Services/consts.dart';

class MyBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isHome;
  final String type;
  final String title;
  final VoidCallback onPressed;
  final PreferredSizeWidget tabs;
  const MyBar(
      {Key key, this.isHome, this.type, this.onPressed, this.title, this.tabs})
      : super(key: key);

  @override
  _MyBarState createState() => _MyBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.isHome) {
      return AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Center(
            child: Text(
              "Store Shop",
              style: TextStyle(
                fontSize: 30,
                color: themeColor,
              ),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: themeColor),
        backgroundColor: barColor,
        elevation: 0,
      );
    } else if (widget.type.isNotEmpty) {
      if (widget.type == 'Furnitures') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'ُElectricals') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'Clothes') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'Mix') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else if (widget.type == 'Purchase Orders') {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      } else {
        return AppBar(
          title: IconButton(
            icon: Icon(Icons.add),
            onPressed: widget.onPressed,
          ),
          iconTheme: IconThemeData(color: themeColor),
          backgroundColor: barColor,
          elevation: 0,
        );
      }
    }
    return AppBar(
      bottom: widget.tabs,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: widget.onPressed,
      ),
      iconTheme: IconThemeData(color: themeColor),
      backgroundColor: Colors.brown[100],
      elevation: 0,
    );
  }
}
