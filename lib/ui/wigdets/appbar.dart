import 'package:e_commerce_mobile/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TopAppBar extends StatelessWidget {
  final int _index;
  const TopAppBar({
    Key key,
    @required int index,
  })  : _index = index,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Icon(
        LineAwesomeIcons.bars,
        color: Colors.black,
      ),
      title: Text(
        "Hello, Prashant",
        style: kAppBarTextStyle,
      ),
      actions: <Widget>[
        Icon(
          LineAwesomeIcons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          LineAwesomeIcons.shopping_bag,
          color: Colors.black,
        ),
        SizedBox(
          width: 20,
        ),
      ],
      bottom: _index == 0
          ? TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Text('SHOP', style: kTabBarTextStyle),
                ),
                Tab(
                  child: Text('CURVE', style: kTabBarTextStyle),
                ),
                Tab(
                  child: Text('BEAUTY', style: kTabBarTextStyle),
                ),
                Tab(
                  child: Text('KIDS', style: kTabBarTextStyle),
                ),
                Tab(
                  child: Text('HOME', style: kTabBarTextStyle),
                ),
              ],
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: SizedBox(
                height: 0,
              ),
            ),
    );
  }
}
