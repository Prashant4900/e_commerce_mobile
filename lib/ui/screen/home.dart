import 'package:e_commerce_mobile/ui/screen/fixed/cart.dart';
import 'package:e_commerce_mobile/ui/screen/fixed/catrgory.dart';
import 'package:e_commerce_mobile/ui/screen/fixed/new.dart';
import 'package:e_commerce_mobile/ui/screen/shop.dart';
import 'package:e_commerce_mobile/ui/screen/fixed/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_mobile/utils/api/products.dart';
import 'package:e_commerce_mobile/ui/wigdets/bottom_navigation_bar.dart';
import 'package:e_commerce_mobile/ui/wigdets/appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    // final productProvider = Provider.of<ProductProvider>(context);

    final List<Widget> _screen = [
      Shop(),
      Category(),
      New(),
      Cart(),
      User(),
    ];

    void _onTapped(int index) {
      setState(() {
        _page = index;
      });
    }

    if (_page == 0) {
      return DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(double.infinity, 100),
              child: TopAppBar(
                index: _page,
              ),
            ),
            body: _screen[_page],
            bottomNavigationBar: BottomNavBar(
              page: _page,
              onTapped: _onTapped,
            ),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: TopAppBar(index: _page),
          ),
          body: _screen[_page],
          bottomNavigationBar: BottomNavBar(
            page: _page,
            onTapped: _onTapped,
          ),
        ),
      );
    }
  }
}

// ListView.builder(
//             itemCount: productProvider.product.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 title: Text(
//                   (productProvider.product[index].name).toString(),
//                   style: TextStyle(color: Colors.black, fontSize: 14),
//                 ),
//                 subtitle: Text(
//                     (productProvider.product[index].description).toString()),
//               );
//             },
//           )
