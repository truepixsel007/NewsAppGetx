// class NewsModel {
//   String status;
//   int totalResults;
//   List<Article> articles;
//
//   NewsModel({
//     required this.status,
//     required this.totalResults,
//     required this.articles,
//   });
//
//   // Factory constructor to create NewsModel from JSON
//   factory NewsModel.fromJson(Map<String, dynamic> json) {
//     return NewsModel(
//       status: json['status'] as String? ?? 'Unknown Status',
//       totalResults: json['totalResults'] as int? ?? 0,
//       articles: (json['articles'] as List<dynamic>?)
//           ?.map((articleJson) => Article.fromJson(articleJson))
//           .toList() ??
//           [],
//     );
//   }
//
//
//   // Convert NewsModel to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'status': status,
//       'totalResults': totalResults,
//       'articles': articles.map((article) => article.toJson()).toList(),
//     };
//   }
// }
//
// class Article {
//   Source source;
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   DateTime publishedAt;
//   String content;
//
//   Article({
//     required this.source,
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.url,
//     required this.urlToImage,
//     required this.publishedAt,
//     required this.content,
//   });
//
//   // Factory constructor to create Article from JSON
//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       source: json['source'] != null
//           ? Source.fromJson(json['source'])
//           : Source(id: 'unknown', name: 'Unknown Source'),
//       author: json['author'] as String? ?? 'Unknown Author',
//       title: json['title'] as String? ?? 'Untitled',
//       description: json['description'] as String? ?? 'No description available',
//       url: json['url'] as String? ?? '',
//       urlToImage: json['urlToImage'] as String? ?? '',
//       publishedAt: json['publishedAt'] != null
//           ? DateTime.parse(json['publishedAt'])
//           : DateTime.now(),
//       content: json['content'] as String? ?? 'No content available',
//     );
//   }
//
//
//   // Convert Article to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'source': source.toJson(),
//       'author': author,
//       'title': title,
//       'description': description,
//       'url': url,
//       'urlToImage': urlToImage,
//       'publishedAt': publishedAt.toIso8601String(),
//       'content': content,
//     };
//   }
// }
//
// class Source {
//   String id;
//   String name;
//
//   Source({
//     required this.id,
//     required this.name,
//   });
//
//
//   // Factory constructor to create Article from JSON
//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       id: json['id'] as String? ?? 'unknown',
//       name: json['name'] as String? ?? 'Unknown Name',
//     );
//   }
//
//
//   // Convert Source to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//     };
//   }
// }
//
//


class NewsModel {
  Source? source;
  String? author;
  String? title;
  String? publishedAt;
  String? urlToImage;
  String? description;

  NewsModel({
    this.source,
    this.author,
    this.title,
    this.publishedAt,
     this.urlToImage,
    this.description
  });

  // Factory constructor to create NewsModel from JSON
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      source: json["source"] != null ? Source.fromJson(json["source"]) : null,
      author: json["author"] as String? ?? "Unknown Author",
      title: json["title"] as String? ?? "No Title",
      publishedAt: json["publishedAt"] as String? ?? "No publishedAt",
      urlToImage: json["urlToImage"] as String? ?? "No Image",
      description: json["description"] as String? ?? "No description",
    );
  }

  // Convert NewsModel to JSON
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (source != null) {
      data["source"] = source!.toJson();
    }
    data["author"] = author;
    data["title"] = title;
    data["publishedAt"] = publishedAt;
    data["urlToImage"] = urlToImage;
    data["description"] = description;
    return data;
  }
}

class Source {
  String? id;
  String? name;

  Source({
    this.id,
    this.name,
  });

  // Named constructor to create Source from JSON
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json["id"] as String?,
      name: json["name"] as String?,
    );
  }

  // Convert Source to JSON
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
    };
  }
}

