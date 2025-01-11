import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Components/TrandingLoadingCard.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/HomePage/Widget/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widget/TrandingCard.dart';
import 'package:news_app/Pages/NewDetails/NewsDetails.dart';

import '../../Components/NewsTileLoading.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});



  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                     InkWell(
                       onTap: (){
                         newsController.getNewsForYou();
                       },
                       child: Container(
                         width: 50,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Theme.of(context).colorScheme.primaryContainer
                         ),
                         child: Icon(Icons.dashboard),
                       ),
                     ),
                     Text('NEWS APP',style:
                       TextStyle(fontSize: 25,fontFamily: "Poppins",fontWeight: FontWeight.w600,letterSpacing: 1.5),),
                     InkWell(
                       onTap: (){
                         newsController.getTradingNews();
                       },
                       child: Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           color: Theme.of(context).colorScheme.primaryContainer
                       ),
                       child: Icon(Icons.person),
                       ),
                     )
                 ],
               ),
              SizedBox(height: 40,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Hottest News",style: Theme.of(context).textTheme.bodyLarge,),
                   Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                 ],
               ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(() =>
                    newsController.isTradingLoading.value
                        ? Row(
                             children: [
                               Trandingloadingcard(),
                               Trandingloadingcard(),
                             ],
                          )
                        : Row(
                      children: newsController.trandingNewsList.map(
                            (e) => Trandingcard(
                          imageUrl: e.urlToImage ?? 'https://via.placeholder.com/150', // Default placeholder image
                          author: e.author! ?? 'no author',
                          tag: 'Tranding no. 1',
                          time: e.publishedAt! ?? '',
                          title : e.title! ?? 'no title',
                          logo: e.author![0],
                          ontap: () {
                            Get.to(
                                Newsdetails(news: e,)
                            );
                          },
                        ),
                      ).toList(),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("News For you",style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),
              SizedBox(
                height: 20,
              ),

             Obx(()=>
                newsController.isNewsForULoading.value
                    ? Column(
                      children: [
                        Newstileloading(),
                        Newstileloading(),
                        Newstileloading(),
                        Newstileloading()
                      ],
                    )
                    :  Column(
                        children: newsController.newsForYour5.map((e) =>
                        NewsTile(
                          logo: e.author![0],
                          imageUrl: e.urlToImage! ?? 'https://static01.nyt.com/images/2020/03/17/world/17Germany/17Germany-jumbo.jpg?quality=75&auto=webp',
                          author: e.author!,
                          time: e.publishedAt!,
                          title : e.title!,
                          ontap: () {
                            Get.to(Newsdetails(
                              news: e,
                            ));
                          },
                        )
                    ).toList()
                )
             ),

              SizedBox(
                height: 20,
              ),

              // tesla news
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tesla News",style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Obx(()=>
              newsController.isTeslaLoading.value
                  ? Column(
                      children: [
                          Newstileloading(),
                          Newstileloading(),
                          Newstileloading(),
                          Newstileloading()
                      ],
                    )
                  :  Column(
                  children: newsController.tesla5News.map((e) =>
                      NewsTile(
                        logo: e.author![0],
                        // imageUrl: e.urlToImage ??
                        //     'https://via.placeholder.com/150',
                        imageUrl: newsController.getValidImageUrl(e.urlToImage),
                        author: e.author!,
                        time: e.publishedAt!,
                        title : e.title!,
                        ontap: () {
                          Get.to(Newsdetails(
                            news: e,
                          ));
                        },
                      )
                  ).toList()
              )
              ),

              SizedBox(
                height: 20,
              ),

              // apple news
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Apple News",style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(() =>
                newsController.isAppleLoading.value
                    ? Row(
                           children: [
                             Trandingloadingcard(),
                             Trandingloadingcard(),
                           ],
                      )
                    : Row(
                  children: newsController.apple5News.map(
                        (e) => Trandingcard(
                      imageUrl: e.urlToImage ?? 'https://via.placeholder.com/150', // Default placeholder image
                      author: e.author! ?? 'no author',
                      tag: 'Tranding no. 1',
                      time: e.publishedAt! ?? '',
                      title : e.title! ?? 'no title',
                      logo: e.author![0],
                      ontap: () {
                        Get.to(
                            Newsdetails(news: e,)
                        );
                      },
                    ),
                  ).toList(),
                )
                ),
              ),

              SizedBox(
                height: 20,
              ),

            //   business news
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Business News",style: Theme.of(context).textTheme.bodyLarge,),
                  Text("See All", style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Obx(()=>
              newsController.isBuisnessLoading.value
                  ? Column(
                        children: [
                           Newstileloading(),
                           Newstileloading(),
                           Newstileloading(),
                           Newstileloading()
                        ],
                    )
                  :  Column(
                  children: newsController.buisness5News.map((e) =>
                      NewsTile(
                        logo: e.author![0],
                        // imageUrl: e.urlToImage ??
                        //     'https://via.placeholder.com/150',
                        imageUrl: newsController.getValidImageUrl(e.urlToImage),
                        author: e.author!,
                        time: e.publishedAt!,
                        title : e.title!,
                        ontap: () {
                          Get.to(Newsdetails(
                            news: e,
                          ));
                        },
                      )
                  ).toList()
              )
              ),

              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
