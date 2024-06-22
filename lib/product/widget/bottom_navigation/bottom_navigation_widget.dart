import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_controller.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_items.dart';

final navigationControllerProvider =
    ChangeNotifierProvider<NavigationController>((ref) {
  return NavigationController();
});

class BottomNavigationWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationController = ref.watch(navigationControllerProvider);

    return BottomNavigationBar(
      items: BottomNavigationItems.getBottomNavigationBarItems(),
      type: BottomNavigationBarType.fixed,
      currentIndex: navigationController.selectedIndex,
      unselectedItemColor: Colors.white60,
      backgroundColor: Colors.orange,
      selectedItemColor: Colors.white,
      onTap: (index) {
        ref
            .read(navigationControllerProvider.notifier)
            .onItemTapped(context, index);
      },
    );
  }
}
