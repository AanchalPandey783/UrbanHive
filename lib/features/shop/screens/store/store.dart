import 'package:ecommerce_platform/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_platform/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_platform/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_platform/common/widgets/products/cart/searchbar.dart';
import 'package:ecommerce_platform/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_platform/features/shop/screens/store/widgets/brand_card.dart';
import 'package:ecommerce_platform/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //SearchBar
        appBar: DAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [DCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrollable) {
            return [
              SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: DHelperFunctions.isDarkmode(context)
                      ? DColors.dark
                      : DColors.textWhite,
                  expandedHeight: 440,
                  automaticallyImplyLeading: false,
                  flexibleSpace: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //SearchBar
                      const SizedBox(
                        height: DSizes.spaceBtwItems,
                      ),
                      const DSearchBar(
                        text: 'Search',
                        onTap: null,
                      ),
                      const SizedBox(
                        height: DSizes.spaceBtwSections / 2,
                      ),

                      //FeaturedBrands
                      DSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                        buttonText: 'View all',
                        buttonColor: DColors.dark,
                      ),
                      const SizedBox(height: DSizes.spaceBtwSections / 1.5),

                      //Brands Grid
                      DGridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const DBrandCard();
                          })
                      //
                    ],
                  ),
                  //Tabs
                  bottom: const DTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ])),
              //SliverAppbar
            ];
          },

          //Body
          body: const TabBarView(
            children: [
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}
