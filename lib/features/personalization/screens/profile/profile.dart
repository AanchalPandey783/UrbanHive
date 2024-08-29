import 'package:ecommerce_platform/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_platform/common/widgets/images/d_circular_image.dart';
import 'package:ecommerce_platform/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_platform/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const DCircularImage(
                      image: DImages.userImage,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change Profile Picture',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: DSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),
              DSectionHeading(onPressed: (){}, title: 'Profile Information', showActionButton: false,),
              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),

              //Profile Information
              ProfileMenu(title: 'Name', value: 'Aanchal', onPressed: () {  },),
              ProfileMenu(title: 'Username', value: 'codingwithdodo', onPressed: () {  },),

              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),
              DSectionHeading(onPressed: (){}, title: 'Profile Information', showActionButton: false,),
              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),

              ProfileMenu(title: 'UserID', value: '76482', onPressed: () {  }, icon: Iconsax.copy,),
              ProfileMenu(title: 'Email', value: 'aanchalpandey783@gmail.com', onPressed: () {  },),
              ProfileMenu(title: 'Phone Number', value: '99XXXXXXXX', onPressed: () {  },),
              ProfileMenu(title: 'Gender', value: 'Female', onPressed: () {  },),
              ProfileMenu(title: 'Date of Birth', value: '07-08-2003', onPressed: () {  },),
              const SizedBox(
                height: DSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(onPressed: (){}, child:  Text('Close Account', style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

