import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoreViewState extends GetxController {
  static MoreViewState get find => Get.find();
  final RxBool isdark = false.obs;
  final RxInt index = 0.obs;
}
