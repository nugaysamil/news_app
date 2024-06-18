import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        StringConstant.newsTren,
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
