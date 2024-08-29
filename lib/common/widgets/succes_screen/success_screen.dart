import 'package:ecommerce_platform/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/constants/text_strings.dart';
import '../../../util/helpers/helper_functions.dart';

class AccountCreated extends StatelessWidget {
  final String image, title, subtitle;
  final VoidCallback onPressed;
  const AccountCreated({super.key, required this.image, required this.title, required this.subtitle,  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(()=>const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Image
              Image(image:  AssetImage(image),width: DHelperFunctions.screenWidth()*0.5,),
              const SizedBox(height:DSizes.spaceBtwSections),



              //Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: DSizes.spaceBtwItems,),
              Text(subtitle,style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height:DSizes.spaceBtwSections),


              //Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed

              ,  child: const Text(DTexts.cont))),
            ],
          ),
        ),
      ));
  }
}
