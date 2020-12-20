import 'package:e_commerce_mobile/ui/screen/slides/beauty.dart';
import 'package:e_commerce_mobile/ui/screen/slides/curve.dart';
import 'package:e_commerce_mobile/ui/screen/slides/home.dart';
import 'package:e_commerce_mobile/ui/screen/slides/kids.dart';
import 'package:e_commerce_mobile/ui/screen/slides/shop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      HomeShop(),
      HomeCurve(),
      HomeBeauty(),
      HomeKids(),
      HomeHome(),
    ]);
  }
}
