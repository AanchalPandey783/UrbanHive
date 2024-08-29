import 'package:ecommerce_platform/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_platform/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_platform/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_platform/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_platform/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: DAppbar(
       title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
       actions: [
         DCircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(const HomeScreen()),)
       ],
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              DGridLayout(itemCount: 8, itemBuilder: (_, context)=> const DProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
