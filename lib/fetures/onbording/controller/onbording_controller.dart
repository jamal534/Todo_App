import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../core/utils/asset_path.dart';

class OnboardingController extends GetxController {
  RxInt currentIndex = 0.obs;

  RxList<Map<String, String>> onboardingData = [
    {
      'image': AssetPath.onbording1,
      'title': 'Manage Everything in One Place',
      'description': "Create, categorize, and keep track of all your personal and work tasks effortlessly — right from your dashboard.",
    },
    {
      'image': AssetPath.onbording2,
      'title': 'Focus on What Matters Most',
      'description': 'Set priorities, add deadlines, and sort tasks by importance so you can tackle what truly moves you forward.',
    },
    {
      'image': AssetPath.onbording3,
      'title': 'Visualize Progress, Stay on Track',
      'description': 'Monitor completed tasks, ongoing projects, and upcoming deadlines — all in a clear, visual format.',
    },
  ].obs;

  void nextPage() {
    if (currentIndex.value < onboardingData.length - 1) {
      currentIndex.value += 1;
    }
  }


  void previousPage() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    } else {
      Get.back();
    }
  }
}