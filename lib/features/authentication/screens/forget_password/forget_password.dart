import 'package:flutter/material.dart';

import '../../../../util/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final String title, subtitle, labelText, buttonText;
  final Icon prefixIcon;
  final VoidCallback onPressed;
  const ForgetPasswordScreen({super.key, required this.title, required this.subtitle, required this.prefixIcon, required this.labelText, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(subtitle, style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: DSizes.spaceBtwSections,),
              TextFormField(decoration: InputDecoration(prefixIcon: prefixIcon, labelText: labelText)),
              const SizedBox(height: DSizes.spaceBtwInputFields,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: Text(buttonText)))
            ],
          ),
        ),
      ),
    );
  }
}
