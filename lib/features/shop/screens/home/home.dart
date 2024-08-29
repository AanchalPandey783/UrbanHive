import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_platform/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/searchbar.dart';
import '../../../../common/widgets/products/products_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            DPrimaryHeaderContainer(
                child: Column(
              children: [
                const DHomeAppBar(),
                const SizedBox(
                  height: DSizes.spaceBtwSections / 2,
                ),
                DSearchBar(
                  text: "Search in store",
                  onTap: () {},
                ),
                const SizedBox(
                  height: DSizes.spaceBtwSections / 2,
                ),
                DSectionHeading(
                  title: "Popular Categories",
                  textColor: DColors.textWhite,
                  onPressed: () {},
                  buttonText: 'View all', buttonColor: DColors.textWhite,
                ),
                const SizedBox(
                  height: DSizes.spaceBtwSections / 2,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: DSizes.defaultSpace),
                  child: DHomeCategories(),
                ),
                const SizedBox(height: DSizes.spaceBtwItems,)
              ],
            )),

            //BODY
            const Padding(
              padding: EdgeInsets.all(DSizes.defaultSpace),
              child: DPromoSlider(
                banners: [
                  DImages.banner1,
                  DImages.banner2,
                  DImages.banner3,
                ],
              ),
            ),

            //Popular Products
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DGridLayout(itemCount: 4, itemBuilder: (_, index) => const DProductCardVertical(),),
            ),
            const SizedBox(height: DSizes.spaceBtwItems,)
          ],
        ),
      ),
    );
  }
}

