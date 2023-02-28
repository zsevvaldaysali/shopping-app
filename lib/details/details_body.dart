import 'package:app_designs_megastore/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app_designs_megastore/constants/colors.dart';
import '../constants/dimensions.dart';
import '../constants/lottie_items.dart';
import '../constants/text_messages.dart';
import '../product/product.dart';
import '../screens/favorites_screen.dart';
import '../widgets/details_column.dart';
import '../widgets/details_icon.dart';
import '../widgets/exandable_text_widget.dart';
import '../widgets/field.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({super.key, this.product});
  final Product? product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, left: 0),
                    height: size.height * 0.6,
                    width: double.maxFinite,
                    child: Image.asset(
                      product?.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: ButtonHeights.hw5,
                  left: ButtonHeights.height20,
                  top: ButtonHeights.customSizedBox_15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppIcon(icon: Icons.arrow_back_ios_new_rounded),
                      Transform.scale(
                        scale: 2.5,
                        child: IconButton(
                          padding: PaddingItems.onlyRight10,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavoritesScreen(),
                              ),
                            );
                          },
                          icon: Lottie.asset(LottieItems.likes.lottiePath),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.50),
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: product?.bgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ButtonHeights.radius50),
                      topRight: Radius.circular(ButtonHeights.radius80),
                    ),
                  ),
                ),
                Positioned(
                  top: ButtonHeights.containerTop380,
                  left: ButtonHeights.height30,
                  right: ButtonHeights.height30,
                  child: SizedBox(
                    height: screenHeight * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppColumn(title: product?.title ?? '', price: product?.price ?? 0),
                        SizedBox(
                          height: ButtonHeights.radius12,
                        ),
                        const Expanded(child: SingleChildScrollView(child: ExpandableTextWidget())),
                        SizedBox(
                          height: ButtonHeights.customSizedBox_10,
                        ),
                        Container(
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: product?.bgColor,
                            borderRadius: BorderRadius.circular(ButtonHeights.radius12),
                            border: Border.all(color: AllColors.black, width: 1.0, style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: PaddingItems.onlyLeft10,
                            child: const ProductTextField(),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CartScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: MarginItems.symmet25,
                            height: ButtonHeights.radius50,
                            width: ButtonHeights.hw150,
                            decoration: BoxDecoration(
                              color: AllColors.mercury,
                              border: Border.all(width: 1.0, style: BorderStyle.solid),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(ButtonHeights.height20),
                                bottomLeft: Radius.circular(ButtonHeights.height20),
                                bottomRight: Radius.circular(ButtonHeights.height20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ProjectTextMessages.buyMessage,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                                ),
                                const Icon(Icons.shopping_cart),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
