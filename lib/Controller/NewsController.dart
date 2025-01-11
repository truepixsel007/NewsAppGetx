import 'dart:convert';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsModel.dart';

class NewsController extends GetxController{
  //  variable list
  // 1
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  // 2
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYour5 = <NewsModel>[].obs;
  // 3
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> apple5News = <NewsModel>[].obs;
  // 4
  RxList<NewsModel> teslaNewsList = <NewsModel>[].obs;
  RxList<NewsModel> tesla5News = <NewsModel>[].obs;
  // 5
  RxList<NewsModel> buisnessNewsList = <NewsModel>[].obs;
  RxList<NewsModel> buisness5News = <NewsModel>[].obs;

  // loading
  // 1
  RxBool isTradingLoading = false.obs;
  // 2
  RxBool isNewsForULoading = false.obs;
  // 3
  RxBool isAppleLoading = false.obs;
  // 4
  RxBool isTeslaLoading = false.obs;
  // 5
  RxBool isBuisnessLoading = false.obs;

  // text to speach
  FlutterTts flutterTts = FlutterTts();
  RxBool isSpeacking = false.obs;


  void onInit() async {
    getTradingNews();
    getNewsForYou();
    getAppleNews();
    getTeslaNews();
    getBusinessNews();
  }

  // 1
  // Top headlines from TechCrunch right now
  Future<void> getTradingNews() async {
    isTradingLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=323d3effc1594d4ea17cbeb011150fb7";
     try{
       var response = await http.get(Uri.parse(baseURL));
       print(response);
       if(response.statusCode == 200){
         print("response.body:  "+ response.body);
         var body = jsonDecode(response.body);
         var articals = body["articles"];
         print('articals');
         print(articals);
         for(var news in articals){
           print('news.toString()');
           print(news.toString());
           trandingNewsList.add(NewsModel.fromJson(news));
         }
         print("body: ");
         print(body);
       }else{
         print("Something went wrong in Trading News");
       }
       print('trandingNewsList: ');
       print(trandingNewsList);
     }catch(e){
       print(e);
     }
    isTradingLoading.value = false;
  }

//   2
//   Wall Street Journal in the last 6 months

  Future<void> getNewsForYou() async {
    isNewsForULoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=323d3effc1594d4ea17cbeb011150fb7";
    try{
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if(response.statusCode == 200){
        print("response.body:  "+ response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        print('articals2');
        print(articals);
        for(var news in articals){
          print('news.toString()2');
          print(news.toString());
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYour5.value = newsForYouList.sublist(0,5).obs;
        print("body2: ");
        print(body);
      }else{
        print("Something went wrong in Trading News");
      }
      print('newsForYouList: ');
      print(newsForYouList);
    }catch(e){
      print(e);
    }
    isNewsForULoading.value = false;
  }

//   3
//   articles mentioning Apple
  Future<void> getAppleNews() async {
    isAppleLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2025-01-01&to=2025-01-01&sortBy=popularity&apiKey=323d3effc1594d4ea17cbeb011150fb7";
    try{
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if(response.statusCode == 200){
        print("response.body:  "+ response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        print('articals2');
        print(articals);
        for(var news in articals){
          print('news.toString()2');
          print(news.toString());
          appleNewsList.add(NewsModel.fromJson(news));
        }
        apple5News.value = appleNewsList.sublist(0,5).obs;
        print("body2: ");
        print(body);
      }else{
        print("Something went wrong in Trading News");
      }
      print('newsForYouList: ');
      print(newsForYouList);
    }catch(e){
      print(e);
    }
    isAppleLoading.value = false;
  }

//   4
//   articles about Tesla
  Future<void> getTeslaNews() async {
    isTeslaLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2025-01-02&to=2025-01-02&sortBy=popularity&apiKey=323d3effc1594d4ea17cbeb011150fb7";
    try{
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if(response.statusCode == 200){
        print("response.body:  "+ response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        print('articals2');
        print(articals);
        for(var news in articals){
          print('news.toString()2');
          print(news.toString());
          teslaNewsList.add(NewsModel.fromJson(news));
        }
        tesla5News.value = teslaNewsList.sublist(0,5).obs;
        print("body2: ");
        print(body);
      }else{
        print("Something went wrong in Trading News");
      }
      print('newsForYouList: ');
      print(newsForYouList);
    }catch(e){
      print(e);
    }
    isTeslaLoading.value = false;
  }

//   5
// Top business headlines
  Future<void> getBusinessNews() async {
    isBuisnessLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=323d3effc1594d4ea17cbeb011150fb7";
    try{
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if(response.statusCode == 200){
        print("response.body:  "+ response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        print('articals2');
        print(articals);
        for(var news in articals){
          print('news.toString()2');
          print(news.toString());
          buisnessNewsList.add(NewsModel.fromJson(news));
        }
        buisness5News.value = buisnessNewsList.sublist(0,5).obs;
        print("body2: ");
        print(body);
      }else{
        print("Something went wrong in Trading News");
      }
      print('newsForYouList: ');
      print(newsForYouList);
    }catch(e){
      print(e);
    }
    isBuisnessLoading.value = false;
  }

//   search funciton
  Future<void> searchNews(String search) async {
    isNewsForULoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=$search&from=2025-01-02&sortBy=publishedAt&apiKey=323d3effc1594d4ea17cbeb011150fb7";
    try{
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if(response.statusCode == 200){
        print("response.body:  "+ response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        print('articals2');
        print(articals);
        newsForYouList.clear();
        int i = 0;
        for(var news in articals){
          i++;
          print('news.toString()2');
          print(news.toString());
          newsForYouList.add(NewsModel.fromJson(news));
          if(i == 10){
            break;
          }
        }
        // newsForYour5.value = buisnessNewsList.sublist(0,5).obs;
        print("body2: ");
        print(body);
      }else{
        print("Something went wrong in Trading News");
      }
      print('newsForYouList: ');
      print(newsForYouList);
    }catch(e){
      print(e);
    }
    isNewsForULoading.value = false;
  }

// text to speach funtion
  Future<void> speak(String text) async{
    isSpeacking.value = true;
    // await flutterTts.setLanguage("en-US");
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
    isSpeacking.value = false;
  }

//   text to speach stop
  void stop() async {
     await flutterTts.stop();
     isSpeacking.value = false;
  }

//   url null
  String getValidImageUrl(String? url) {
    // Check if the URL is null, empty, or invalid
    if (url == null || url.isEmpty || !Uri.tryParse(url)!.hasAbsolutePath == true) {
      return 'https://via.placeholder.com/150'; // Fallback placeholder
    }
    return url;
  }

}