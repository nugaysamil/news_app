

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class BreakingAndSeeMore extends StatelessWidget {
  const BreakingAndSeeMore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstant.breakingNews,
            style: AppStyles.latoTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              StringConstant.seeMore,
              style: GoogleFonts.lato(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
