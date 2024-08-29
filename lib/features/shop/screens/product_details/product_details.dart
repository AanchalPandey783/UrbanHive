import 'package:ecommerce_platform/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_platform/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_platform/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../util/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkmode(context);

    return const Column(
      children: [
        //Product Image Slider
        DProductImageSlider(),

        //Product Details
        Padding(
          padding: EdgeInsets.only(
              right: DSizes.defaultSpace,
              left: DSizes.defaultSpace,
              bottom: DSizes.defaultSpace),
          child: Column(
            children: [

              //Ratings and Reviews
              DRatingAndShare(),

              //Price, Title, Stock, Brand
             DProductMetaData()

              //Attributes
              
              //Checkout Button
              //Description
              //Reviews
            ],
          ),
        ),
      ],
    );
  }
}
