import 'package:app_designs_megastore/details/details_page.dart';
import 'package:app_designs_megastore/product/product.dart';
import 'package:app_designs_megastore/product/product_card.dart';
import 'package:app_designs_megastore/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../drawer/header_drawer.dart';

class EntranceScreen extends StatefulWidget {
  const EntranceScreen({super.key});

  @override
  State<EntranceScreen> createState() => _EntranceScreenState();
}

class _EntranceScreenState extends State<EntranceScreen> {
  final ProjectTextMessages textMessages = ProjectTextMessages();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset('assets/png/menubar.png'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            IconButton(
              iconSize: double.parse('55'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EntranceScreen()),
                );
              },
              icon: CircleAvatar(
                child: Image.asset(
                  'assets/png/womanProfile.png',
                ),
              ),
            ),
          ],

          iconTheme: IconThemeData(color: AllColors.grey),
          backgroundColor: AllColors.transpar,
          //backgroundColor: LightTheme().theme.scaffoldBackgroundColor,
          elevation: 0,
        ),
        drawer: Drawer(
          shadowColor: AllColors.miyazaki,
          backgroundColor: AllColors.iceClimber,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: const [
                  HeaderDrawer(),
                  //HeaderDrawerList(),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          padding: PaddingItems.all,
          decoration: BoxDecoration(
              color: AllColors.transpar, borderRadius: BorderRadius.all(Radius.circular(ButtonHeights.radius12))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textMessages.subtitle,
                    textAlign: TextAlign.center, style: LightTheme().theme.textTheme.displayMedium),
                SizedBox(height: ButtonHeights.sizedBoxHeight),
                Text(textMessages.title, style: LightTheme().theme.textTheme.displaySmall),
                SizedBox(height: ButtonHeights.sizedBoxHeight),
                const RowProduct(),
                SizedBox(height: ButtonHeights.defaultSpace * 5.5),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(textMessages.popular,
                                textAlign: TextAlign.center, style: LightTheme().theme.textTheme.titleMedium),
                            SizedBox(
                              width: ButtonHeights.defaultSpace,
                            ),
                            Container(
                              margin: MarginItems.right5Left5,
                              child: Text(textMessages.dot, style: LightTheme().theme.textTheme.displaySmall),
                            ),
                            SizedBox(
                              width: ButtonHeights.defaultSpace,
                            ),
                            Container(
                              margin: MarginItems.top10,
                              child: Text(textMessages.pairing, style: LightTheme().theme.textTheme.displaySmall),
                            ),
                            SizedBox(
                              width: ButtonHeights.defaultSpace,
                            ),
                          ],
                        ),
                        const ColumnProduct(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

class ColumnProduct extends StatelessWidget {
  const ColumnProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demo_product.length,
        itemBuilder: (context, index) {
          return Container(
            margin: MarginItems.right10Top8,
            child: Row(
              children: [
                //image section
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: AllColors.whiteWithOpacity,
                      borderRadius: BorderRadius.circular(ButtonHeights.radius12),
                      image: DecorationImage(fit: BoxFit.fill, image: AssetImage(demo_product[index].image))),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            product: demo_product[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //text section

                Expanded(
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(ButtonHeights.radius12),
                        bottomRight: Radius.circular(ButtonHeights.radius12),
                      ),
                      color: AllColors.mercury,
                    ),
                    child: Padding(
                      padding: PaddingItems.onlyLeft10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(demo_product[index].title, maxLines: 1, style: LightTheme().theme.textTheme.titleSmall),
                          SizedBox(
                            height: ButtonHeights.defaultSpace,
                          ),
                          Text(demo_product[index].description,
                              maxLines: 1, style: LightTheme().theme.textTheme.labelMedium),
                          SizedBox(
                            height: ButtonHeights.width15,
                          ),
                          Padding(
                            padding: PaddingItems.onlyLeft150,
                            child: Text(
                              textAlign: TextAlign.end,
                              ('\$${demo_product[index].price}'),
                              maxLines: 1,
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            width: ButtonHeights.defaultSpace,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });

    /**/
    /*SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
              demo_product.length,
              (index) => Padding(
                    padding: PaddingItems.onlyBottom,
                    child: ProductCard(
                      image: demo_product[index].image,
                      title: demo_product[index].title,
                      price: demo_product[index].price,
                      bgColor: demo_product[index].bgColor,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: demo_product[index],
                                  )),
                        );
                      },
                      height: ButtonHeights.forBottomProducts,
                      width: ButtonHeights.forBottomProducts,
                    ),
                  ))),
    );*/
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllColors.transpar,
      child: Padding(
        padding: PaddingItems.symmet,
        child: GNav(
            curve: Curves.easeInCubic,
            duration: const Duration(seconds: 1),
            gap: 8,
            rippleColor: AllColors.lightGrey.withOpacity(0.4),
            backgroundColor: AllColors.transpar,
            activeColor: AllColors.black,
            tabBackgroundColor: AllColors.lightGrey.withOpacity(0.4),
            tabShadow: [BoxShadow(color: AllColors.downy.withOpacity(0.3), blurRadius: 8)],
            padding: PaddingItems.all,
            tabs: [
              GButton(icon: Icons.home_rounded, text: ProjectTextMessages().homePage),
              GButton(icon: Icons.search_rounded, text: ProjectTextMessages().searchingPage),
              GButton(icon: Icons.favorite_border, text: ProjectTextMessages().favoritesPage),
              GButton(icon: Icons.settings_outlined, text: ProjectTextMessages().settingsPage)
            ]),
      ),
    );
  }
}

class RowProduct extends StatelessWidget {
  const RowProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          demo_product.length,
          (index) => Padding(
            padding: PaddingItems.onlyRight15,
            child: ProductCard(
              image: demo_product[index].image,
              title: demo_product[index].title,
              price: demo_product[index].price,
              bgColor: demo_product[index].bgColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            product: demo_product[index],
                          )),
                );
              },
              height: ButtonHeights.forProductHeight,
              width: ButtonHeights.forProductWidth,
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectTextMessages {
  final String subtitle = 'Mega Store';
  final String title = 'Find out your Gadgets';
  final String popular = 'Popular';
  final String dot = '.';
  final String pairing = 'Product pairing';
  final String homePage = 'Home';
  final String searchingPage = 'Search';
  final String favoritesPage = 'Likes';
  final String settingsPage = 'Settings';
}
