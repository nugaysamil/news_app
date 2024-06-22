import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class ExploreAndSavedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAndSavedAppBar({
    super.key,
    required this.userPhoto,
  });

  final String? userPhoto;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: userPhoto!.startsWith('http')
              ? NetworkImage(userPhoto!)
              : AssetImage(userPhoto!) as ImageProvider,
        ),
      ),
      title: Container(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.orange[50],
            hintText: StringConstant.searchTopic,
            hintStyle: GoogleFonts.lato(
              fontSize: 14,
            ),
            prefixIcon: null,
            suffixIcon: Icon(
              Icons.search,
              color: Colors.orange,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange,
            ),
            child: IconButton(
              icon: ImageIcon(
                color: Colors.white,
                AssetImage(
                  Assets.icons.vector.path,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
