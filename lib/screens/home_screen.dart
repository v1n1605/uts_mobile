import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/article.dart';
import '../screens/detail_screen.dart';
import '../widgets/article_card.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  const HomeScreen({super.key, required this.toggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Article>> _articlesFuture;

  @override
  void initState() {
    super.initState();
    _articlesFuture = _loadArticles();
  }

  Future<List<Article>> _loadArticles() async {
    final jsonStr = await rootBundle.loadString('assets/news.json');
    final List data = json.decode(jsonStr);
    return data.map((e) => Article.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Berita Terkini"),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.wb_sunny : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder<List<Article>>(
        future: _articlesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final articles = snapshot.data ?? [];
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: articles.length,
                  itemBuilder: (context, i) {
                    final a = articles[i];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailScreen(article: a)),
                        );
                      },
                      child: ArticleCard(article: a, isHorizontal: true, onTap: () {  },),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Top",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

// 🔹 Daftar artikel “Top” dengan navigasi ke DetailScreen
              ...articles.map((a) => ArticleCard(
                article: a,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailScreen(article: a),
                    ),
                  );
                },
              )),

            ],
          );
        },
      ),
    );
  }
}
