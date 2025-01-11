import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../Controller/BotthomNavigationController.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: 200,
          height: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  controller.index.value = 0;
                },
                child: Obx(() =>
                 AnimatedContainer(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration : BoxDecoration(
                        color: controller.index.value == 0 ? Theme.of(context).colorScheme.primary
                        : null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.bounceInOut,
                    child: Icon(Icons.home,
                      size: 25,
                      color: controller.index.value == 0 ? Theme.of(context).colorScheme.onSurface
                      : Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  controller.index.value = 1;
                },
                child: Obx(()=>
                   AnimatedContainer(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration : BoxDecoration(
                        color: controller.index.value == 1 ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100)
                    ),
                     duration: Duration(milliseconds: 300),
                     curve: Curves.bounceInOut,
                    child: Icon(Icons.book,
                      size: 25,
                      color: controller.index.value == 1 ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ),
              ),
              // InkWell(
              //   onTap: (){
              //     controller.index.value = 2;
              //   },
              //   child: Obx(() =>
              //     AnimatedContainer(
              //       width: 40,
              //       height: 40,
              //       padding: EdgeInsets.all(5),
              //       decoration : BoxDecoration(
              //           color: controller.index.value == 2 ? Theme.of(context).colorScheme.primary
              //               : null,
              //           borderRadius: BorderRadius.circular(100)
              //       ),
              //       duration: Duration(milliseconds: 300),
              //       curve: Curves.bounceInOut,
              //       child: Icon(Icons.settings,
              //         size: 25,
              //         color: controller.index.value == 2 ? Theme.of(context).colorScheme.onSurface
              //             : Theme.of(context).colorScheme.secondaryContainer,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
