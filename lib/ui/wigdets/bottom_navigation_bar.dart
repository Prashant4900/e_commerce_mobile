import 'package:e_commerce_mobile/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required int page,
    @required Function onTapped,
  })  : _page = page,
        _onTapped = onTapped,
        super(key: key);

  final int _page;
  final Function _onTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.home,
            color: Colors.black,
          ),
          title: Text(
            'Shop',
            style: kBottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.bars,
            color: Colors.black,
          ),
          title: Text(
            'Category',
            style: kBottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.atom,
            color: Colors.black,
          ),
          title: Text(
            'New',
            style: kBottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.shopping_bag,
            color: Colors.black,
          ),
          title: Text(
            'Bag',
            style: kBottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.user,
            color: Colors.black,
          ),
          title: Text(
            'Me',
            style: kBottomTextStyle,
          ),
        ),
      ],
      currentIndex: _page,
      onTap: _onTapped,
    );
  }
}
