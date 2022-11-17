import 'package:flutter/material.dart';
class VIPShopPage extends StatefulWidget {
  const VIPShopPage({super.key});

  @override
  State<VIPShopPage> createState() => _VIPShopPageState();
}

class _VIPShopPageState extends State<VIPShopPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("会员购"),
    );
  }
}