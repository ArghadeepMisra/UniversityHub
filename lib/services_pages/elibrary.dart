import 'package:flutter/material.dart';

class Elibrary extends StatelessWidget {
  const Elibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return InkWell(
                child: Container(
                  height: 70,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                      borderRadius: BorderRadius.circular(8.0)),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text("${item.author} ",
                              style: Theme.of(context).textTheme.caption),
                          const SizedBox(height: 8),
                        ],
                      )),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;

  final String author;

  Article({required this.title, required this.author});
}

final List<Article> _articles = [
  Article(
    title: "BOOK 1",
    author: "Mathematics",
  ),
  Article(
    title: "BOOK 2",
    author: "Statistics",
  ),
  Article(
    title: "BOOK 3",
    author: "Computer Science",
  ),
  Article(
    title: "BOOK 4",
    author: "Economics",
  ),
  Article(
    title: "BOOK 5",
    author: "Environmental Science",
  ),
  Article(
    title: "BOOK 6",
    author: "Accountency",
  ),
  Article(
    title: "BOOK 7",
    author: "English",
  ),
];
