import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/list_controller.dart';
import 'package:fluttergetx/controllers/tap_controller.dart';
import 'package:fluttergetx/my_home_page.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.find();
    TapController controller = Get.find();
    return  Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(
          children: [
            Obx(()=> Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text("total value" + controller.z.toString(), style:
                      TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text("y value" + controller.y.value.toString(), style:
                    TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  ),
                )
              ],
            ),),
            GestureDetector(
              onTap: () {
                Get.to(()=>MyHomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("x value " + Get.find<TapController>().x.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
               // Get.to(()=>MyHomePage());
                controller.increaseY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Increase y",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(()=>MyHomePage());
                controller.totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Total x + y",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(()=>MyHomePage());
                  listController.setValues(controller.z);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Save total",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
