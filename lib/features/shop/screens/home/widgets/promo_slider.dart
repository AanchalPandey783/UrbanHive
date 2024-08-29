import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../common/images/rounded_images.dart';
import '../../../../../common/widgets/images/d_rounded_image.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../controller/home_controller.dart';

class DPromoSlider extends StatelessWidget {
  final List<String> banners;
  const DPromoSlider({
    super.key, required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    //Created a new instance of HomeController class
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url)=> DRoundedImage(imageUrl:url)).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index))),
        const SizedBox(
          height: DSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                 DRoundedContainer(
                    height: 5,
                    width: 20,
                    backgroundColor: controller.carousalCurrentIndex.value==i? DColors.primary:DColors.grey,
                    margin: const EdgeInsets.only(right: 10)),
            ],
          ),
        ),

      ],
    );
  }
}
