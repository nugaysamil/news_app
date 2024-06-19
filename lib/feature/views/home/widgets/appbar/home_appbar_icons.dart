import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final String icon;
  const AppBarIcons(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.orange,
      ),
      child: IconButton(
        color: Colors.white,
        icon: ImageIcon(
          AssetImage(icon),
        ),
        onPressed: () {},
      ),
    );
  }
}
