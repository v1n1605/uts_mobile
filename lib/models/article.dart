// lib/models/article.dart
class Article {
  final String id;
  final String title;
  final String category;
  final String excerpt;
  final String content;
  final String image;
  final String author;
  final DateTime publishedAt;

  Article({
    required this.id,
    required this.title,
    required this.category,
    required this.excerpt,
    required this.content,
    required this.image,
    required this.author,
    required this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as String,
      title: json['title'] as String,
      category: json['category'] as String,
      excerpt: json['excerpt'] as String,
      content: json['content'] as String,
      image: json['image'] as String,
      author: json['author'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
    );
  }
}
