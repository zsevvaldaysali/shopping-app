import 'package:app_designs_megastore/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/dimensions.dart';
import '../constants/lottie_items.dart';
import '../product/product.dart';
import '../screens/entrance_screen.dart';
import '../widgets/details_column.dart';
import '../widgets/details_icon.dart';
import '../widgets/exandable_text_widget.dart';
import '../widgets/field.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({super.key, this.product});
  final Product? product;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    ButtonHeights(sayfaHeight: size.height);

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
                    color: AllColors.blossoms,
                    width: double.maxFinite,
                    child: Image.asset(
                      product?.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: ButtonHeights.iconRight0_07 * screenHeight,
                  left: ButtonHeights.iconLeft0_03 * screenHeight,
                  top: ButtonHeights.iconTop0_04 * screenHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppIcon(icon: Icons.arrow_back_ios_new_rounded),
                      Transform.scale(
                        scale: 2.5,
                        child: IconButton(
                          padding: PaddingItems.onlyRight10,
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EntranceScreen(),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ButtonHeights.radius50),
                      topRight: Radius.circular(ButtonHeights.radius80),
                    ),
                  ),
                ),
                Positioned(
                  top: ButtonHeights.containerTop0_53 * screenHeight,
                  left: ButtonHeights.iconTop0_04 * screenHeight,
                  right: ButtonHeights.iconTop0_04 * screenHeight,
                  child: SizedBox(
                    height: screenHeight * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppColumn(title: product?.title ?? '', price: product?.price ?? 0),
                        SizedBox(
                          height: ButtonHeights.customSizedBox_15 * screenHeight,
                        ),
                        const Expanded(child: SingleChildScrollView(child: ExpandableTextWidget())),
                        SizedBox(
                          height: ButtonHeights.customSizedBox_10 * screenHeight,
                        ),
                        Container(
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: product?.bgColor,
                            borderRadius: BorderRadius.circular(ButtonHeights.radius12),
                            border: Border.all(color: Colors.black, width: 1.0, style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(ButtonHeights.customPadding_20 * screenHeight, 0, 0, 0),
                            child: const ProductTextField(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: ButtonHeights.height25),
                          height: ButtonHeights.radius50,
                          width: ButtonHeights.hw150,
                          decoration: BoxDecoration(
                            color: AllColors.mercury,
                            border: Border.all(width: 1.0, style: BorderStyle.solid),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(ButtonHeights.radius30),
                              bottomLeft: Radius.circular(ButtonHeights.radius30),
                              bottomRight: Radius.circular(ButtonHeights.radius30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Buy Now",
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                              IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
                            ],
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
