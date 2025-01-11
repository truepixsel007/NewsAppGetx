import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/ArticalPage/Widgets/SearchWidget.dart';
import 'package:news_app/Pages/HomePage/Widget/NewsTile.dart';
import 'package:news_app/Pages/NewDetails/NewsDetails.dart';

class Articalpage extends StatelessWidget {
  const Articalpage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());

    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20,),

              Obx(() =>
                  Column(
                    children: newsController.newsForYouList.map((e) =>  NewsTile(
                      imageUrl: e.urlToImage ?? 'https://via.placeholder.com/150',
                      author: e.author ?? 'Unknown',
                      time: e.publishedAt ?? 'Unknown',
                      title : e.title!,
                      logo: e.author![0],
                      ontap: () {
                        Get.to(Newsdetails(news: e));
                      },
                    ),
                    ).toList(),
                  )
              )

            ],
            ),
          ),
        ),
    );
  }
}
