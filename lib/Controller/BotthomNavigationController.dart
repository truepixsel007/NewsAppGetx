import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:news_app/Pages/ArticalPage/ArticalPage.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';
import 'package:news_app/Pages/Profile/ProfilePage.dart';

class BottomNavController extends GetxController {
    RxInt index = 0.obs;

    var pages = [
        Homepage(),
        Articalpage(),
        // Profilepage()
    ];
}