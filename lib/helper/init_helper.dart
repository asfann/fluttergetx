import 'package:fluttergetx/controllers/list_controller.dart';
import 'package:fluttergetx/controllers/tap_controller.dart';
import 'package:get/get.dart';

Future<void> init() async{
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}