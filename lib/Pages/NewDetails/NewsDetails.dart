import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Model/NewsModel.dart';

class Newsdetails extends StatelessWidget {
  final NewsModel news;
  const Newsdetails({super.key,
  required this.news
  });
  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Row(
                   children: [
                     InkWell(
                       onTap: (){
                         Get.back();
                       },
                       child: Container(
                         child: Row(
                           children: [
                             Icon(Icons.arrow_back_ios_new),
                             Text("Back")
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                SizedBox(height: 30,),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              news.urlToImage! ?? 'https://via.placeholder.com/150',
                              fit: BoxFit.cover,
                            ),
                          ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text(news.title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(news.publishedAt!,style:
                      Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child:Text(news.author![0],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(news.author!,style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                    ),)
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Obx(()=>
                      newsController.isSpeacking.value ?
                      IconButton(
                          onPressed: (){
                            newsController.stop;
                            // newsController.speak(
                            //     'नीचे दी गई तालिका आईएसओ 639-1 मानक से hi कोड द्वारा निर्दिष्ट हिंदी भाषा के लिए तकनीकी विवरण प्रदान करती है।'
                            // );
                          },
                          icon: Icon(
                            Icons.stop,
                            size: 50,
                          )
                      )
                          :  IconButton(
                          onPressed: (){
                            newsController.speak(news.description!);

                            // newsController.speak(
                            //     'नीचे दी गई तालिका आईएसओ 639-1 मानक से hi कोड द्वारा निर्दिष्ट हिंदी भाषा के लिए तकनीकी विवरण प्रदान करती है।'
                            // );
                          },
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            size: 50,
                          )
                      ),
                      ),

                          Expanded(
                            child:
                              Obx(()=>  Lottie.asset(
                                         'assets/Animation/Animation.json',
                                          height: 70,
                                          animate: newsController.isSpeacking.value,
                                        ),
                              ),
                          )
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Text(news.description ?? 'no description',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
