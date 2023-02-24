import 'package:app_designs_megastore/screens/entrance_screen.dart';
import 'package:app_designs_megastore/widgets/details_column.dart';
import 'package:app_designs_megastore/widgets/details_icon.dart';
import 'package:app_designs_megastore/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';
import '../constants/lottie_items.dart';
import '../product/product.dart';
import '../widgets/field.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    int itemCount = 1;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //extendBodyBehindAppBar: true,
      backgroundColor: product?.bgColor ?? AllColors.whiteWithOpacity,
      body: Stack(
        children: [
          //image
          Positioned(
            left: 0,
            right: 0,
            child: SizedBox(
              width: double.maxFinite,
              child: Image.asset(
                product?.image ?? '',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          //icons
          Positioned(
            right: ButtonHeights.sizedBoxHeight,
            left: ButtonHeights.height20,
            top: ButtonHeights.defaultSpace,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(icon: Icons.arrow_back_ios_new_rounded),
                SizedBox(
                    width: ButtonHeights.hw100,
                    height: ButtonHeights.hw100,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EntranceScreen(),
                            ),
                          );
                        },
                        icon: Lottie.asset(LottieItems.likes.lottiePath))),
              ],
            ),
          ),

          //expandable product description
          Positioned(
            left: 0,
            right: 0,
            top: 360,
            child: Container(
              padding: EdgeInsets.fromLTRB(ButtonHeights.defaultSpace * 3, ButtonHeights.defaultSpace * 2,
                  ButtonHeights.defaultSpace * 3, ButtonHeights.defaultSpace),
              decoration: BoxDecoration(
                //color: Colors.red,
                color: product?.bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(ButtonHeights.radius50),
                  topRight: Radius.circular(ButtonHeights.radius80),
                ),
              ),
              child: SizedBox(
                height: 167.4,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(height: 84, child: AppColumn(title: product?.title ?? '', price: product?.price ?? 0)),
                  SizedBox(
                    height: ButtonHeights.defaultSpace,
                  ),
                  const Expanded(child: SingleChildScrollView(child: ExpandableTextWidget())),
                ]),
              ),
            ),
          ),

          Positioned(
            left: 30,
            right: 30,
            top: 555,
            child: Container(
              padding: EdgeInsets.fromLTRB(ButtonHeights.defaultSpace * 1.5, 0, 0, 0),
              decoration: BoxDecoration(
                color: product?.bgColor,
                borderRadius: BorderRadius.circular(ButtonHeights.radius12),
                border: Border.all(color: Colors.black, width: 1.0, style: BorderStyle.solid),
              ),
              child: SizedBox(
                height: 90.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 53,
                      child: ProductTextField(),
                    ),
                    Expanded(
                      child: Container(
                        padding: PaddingItems.onlyLeft20,
                        height: ButtonHeights.radius80,
                        width: ButtonHeights.radius80,
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          iconSize: ButtonHeights.defaultSpace * 7,
                          color: AllColors.black,
                          onPressed: () {
                            textController.text.isNotEmpty ? null : 'Invalid Field';
                            print("yey");
                          },
                          icon: Image.asset(
                            "assets/png/paperPlane.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          /*
          Image.asset(
                              "assets/png/paper_plane.png",
                              fit: BoxFit.fill,
                            )
          
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 640,
            child: Container(
              decoration: BoxDecoration(
                color: AllColors.blossoms,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
