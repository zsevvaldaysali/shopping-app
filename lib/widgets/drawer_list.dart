import 'package:app_designs_megastore/constants/dimensions.dart';
import 'package:app_designs_megastore/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';
import '../screens/entrance_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/search_screen.dart';
import '../theme/light_theme.dart';

enum DrawerSections {
  homepage,
  search,
  favorites,
  settings,
}

class HeaderDrawerList extends StatefulWidget {
  const HeaderDrawerList({super.key});

  @override
  State<HeaderDrawerList> createState() => _HeaderDrawerListState();
}

class _HeaderDrawerListState extends State<HeaderDrawerList> {
  var currentPage = DrawerSections.homepage;
  @override
  Widget build(BuildContext context) {
    return drawerList();
  }

  Widget drawerList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        drawerListItems(1, "Home", 'home', currentPage == DrawerSections.homepage ? true : false, ButtonHeights.hw60),
        drawerListItems(2, "Search", 'search', currentPage == DrawerSections.search ? true : false, ButtonHeights.hw55),
        drawerListItems(3, "Favorites", 'fillingHeartTransparant',
            currentPage == DrawerSections.favorites ? true : false, ButtonHeights.radius50),
        drawerListItems(
            4, "Settings", 'settings', currentPage == DrawerSections.settings ? true : false, ButtonHeights.size40),
      ],
    );
  }

  Widget drawerListItems(int id, String title, String path, bool selected, double size) {
    return Material(
      color: AllColors.whiteWithOpacity.withOpacity(0.1),
      child: InkWell(
        onTap: () {
          setState(() {
            if (id == 1) {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const EntranceScreen(),
                ),
              );
            } else if (id == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            } else if (id == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritesScreen(),
                ),
              );
            } else if (id == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            }
          });
        },
        child: Padding(
          padding: PaddingItems.right20Top10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(height: size, child: Lottie.asset("assets/lottie/$path.json")),
              ),
              SizedBox(
                width: ButtonHeights.height35,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: LightTheme().theme.textTheme.titleMedium!.copyWith(fontSize: ButtonHeights.height20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
