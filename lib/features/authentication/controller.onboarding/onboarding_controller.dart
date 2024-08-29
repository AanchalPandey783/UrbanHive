import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; //Observer widget the value //or can use a final Keyword too

  //Updates current index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jumps the specific page when dot is selected
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Updates current page and Navigates to the next page
  void nextPage() {
    if(currentPageIndex.value == 2){
    Get.offAll(const LoginScreen()); //get.offAll removes all screens previously created
    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Updates current page and Navigates to the last page
  void skipPage() {
    currentPageIndex.value=2; //keeps the state
    pageController.jumpTo(2); //jumps the screen to last state
  }
}
