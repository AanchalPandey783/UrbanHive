import 'package:ecommerce_platform/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_platform/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:ecommerce_platform/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //Header
        child: Column(
          children: [
            DPrimaryHeaderContainer(
                child: Column(
              children: [
                //Appbar
                DAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: DColors.textWhite),
                  ),
                ),
                const SizedBox(
                  height: DSizes.spaceBtwItems,
                ),
                //User Profile Card
                 DUserProfileTile(
                  title: 'Jane Doe',
                  subTitle: 'janedoe@gmail.com',
                  onPressed: ()=> Get.to(()=>const ProfileScreen()),
                ),
                const SizedBox(
                  height: DSizes.spaceBtwSections,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(DSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  DSectionHeading(
                    title: 'Account Settings',
                    onPressed: () {},
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: DSizes.spaceBtwItems,
                  ),
                  DSettingsMenuTile(
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'My Orders',
                    subTitle: 'In-progress and completed orders',
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'Bank Account ',
                    subTitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all Discounted Coupons',
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'Manage data Usage and connected Accounts',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  //App Settings
                  const SizedBox(height: DSizes.spaceBtwSections,),
                  DSectionHeading(onPressed: (){}, title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: DSizes.spaceBtwItems,),
                  DSettingsMenuTile(
                    title: 'Upload Data',
                    subTitle: 'Upload Data to your cloud Firebase',
                    icon: Iconsax.document_upload,
                    onTap: () {},
                  ),
                  DSettingsMenuTile(
                    title: 'Geo Location',
                    subTitle: 'Set location based recommendations',
                    icon: Iconsax.location,
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {  },),
                  ),
                  DSettingsMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search result safe for all ages',
                    icon: Iconsax.security_user,
                    onTap: () {},
                    trailing: Switch(value: false, onChanged: (value) {  },),

                  ),
                  DSettingsMenuTile(
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    onTap: () {},
                    trailing: Switch(value: true, onChanged: (value) {  },),

                  ),

                  const SizedBox(height: DSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: DSizes.spaceBtwSections*2),



                ],
              ),
            )
          ],
        ),

        //Body
      ),
    );
  }
}
