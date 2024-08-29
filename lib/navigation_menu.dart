import 'package:ecommerce_platform/features/personalization/screens/settings/settings.dart';
import 'package:ecommerce_platform/features/shop/screens/home/home.dart';
import 'package:ecommerce_platform/features/shop/screens/store/store.dart';
import 'package:ecommerce_platform/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecommerce_platform/util/constants/colors.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerNavigation = Get.put(NavigationController());
    final dark = DHelperFunctions.isDarkmode(context);
    //Get.put() created an instance of NavigationController and assigned it to a variable
    return Scaffold(
      bottomNavigationBar: Obx(
        //Obx will redraw the NavigationBar each time for every screen, so it is passed as a function rather than a child
        //Obx Widget detects an obs variable inside it and if not detected throws an error
        //Obx : observer & obs : what is being observed
        //Whenever there is change in observer variable Obx observes it and redraws the state
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controllerNavigation.indexSelected.value,
          //selectedIndex of navigationBar should use the observer variable of GetxController
          onTap: (index) => controllerNavigation.indexSelected.value = index,
/*On Selection the value of index becomes the value of indexSelected (which is an observer variable)
           of controllerNavigation which is an instance of NavigationController which is a GetxController*/
          //The value of the observer variable is passed to the index
          backgroundColor:dark ? DColors.darkContainer : DColors.textWhite,
          selectedItemColor: dark ? DColors.light.withOpacity(0.9) : DColors.dark.withOpacity(0.9),
          unselectedItemColor: dark ? DColors.light.withOpacity(0.6) : DColors.dark.withOpacity(0.6),
          selectedLabelStyle: const TextStyle(fontSize: 12), // Adjust the font size for selected labels
          unselectedLabelStyle: const TextStyle(fontSize: 12), // Adjust the font size for unselected labels
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
            () => controllerNavigation.screens[controllerNavigation.indexSelected.value],
      ),
      //Shows the screens of the controller instance on the indexSelected value
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> indexSelected = 0.obs; // Observer variable
  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen()
  ];
}
