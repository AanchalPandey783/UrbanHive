import 'package:ecommerce_platform/common/widgets/succes_screen/success_screen.dart';
import 'package:ecommerce_platform/util/constants/image_strings.dart';
import 'package:ecommerce_platform/util/constants/text_strings.dart';
import 'package:ecommerce_platform/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/constants/sizes.dart';
import '../login/login.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Image
              Image(image: const AssetImage(DImages.emailSent),width: DHelperFunctions.screenWidth()*0.5,),
              const SizedBox(height:DSizes.spaceBtwSections),



              //Title & Subtitle
              Text(DTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: DSizes.spaceBtwItems,),
              Text('support@gmail.com', style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: DSizes.spaceBtwItems,),
              Text(DTexts.confirmEmailSubtitle,style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height:DSizes.spaceBtwSections),


              //Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                Get.to(()=>AccountCreated(image: DImages.emailVerified, title: DTexts.yourAccountCreatedTitle, subtitle: DTexts.yourAccountCreatedSubtitle, onPressed:()=>Get.to(()=>const LoginScreen())) );
              },  child: const Text(DTexts.cont))),
             // const SizedBox(height: DSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(DTexts.resendEmail, style: Theme.of(context).textTheme.bodyLarge,))),

            ],
          ),
        ),
      )
    );
  }
}
