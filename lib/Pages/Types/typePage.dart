import 'package:flutter/material.dart';
import 'package:buy_by_click/Components/BasicComponents/myBar.dart';
import 'package:buy_by_click/Components/BasicComponents/myDrawer.dart';
import 'package:buy_by_click/Components/SecondaryComponents/typeImage.dart';
import 'package:buy_by_click/Providers/provider.dart';
import 'package:buy_by_click/Services/consts.dart';
import 'package:provider/provider.dart';

class TypePage extends StatefulWidget {
  static final String id = 'typePage';
  final String typeName;
  final String typeImage;

  const TypePage({Key key, this.typeName, this.typeImage}) : super(key: key);

  @override
  _TypePageState createState() => _TypePageState();
}

class _TypePageState extends State<TypePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Providerf>(
      create: (context) {
        return Providerf();
      },
      child: Builder(builder: (context) {
        return Consumer<Providerf>(
          builder: (context, provider, _) {
            return Scaffold(
              backgroundColor: backGroundGeneralColor,
              appBar: MyBar(
                isHome: false,
                type: widget.typeName,
                onPressed: () {},
              ),
              endDrawer: MyDrawer(),
              extendBodyBehindAppBar: true,
              body: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: AnimatedSwitcher(
                          child: provider.postListContent,
                          duration: Duration(milliseconds: 500),
                          transitionBuilder: (child, animation) {
                            animation = CurvedAnimation(
                              parent: animation,
                              curve: Curves.decelerate,
                            );
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ),
                    TypeImage(
                      typeImage: widget.typeImage,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
