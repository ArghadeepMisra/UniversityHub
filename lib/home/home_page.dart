import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
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
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                  ],
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
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.imageUrl,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    title: "IGNOU house Allotment Application form (under 75th HAC Meeting)",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "Yesterday",
  ),
  Article(
      title:
          "NCIDE is inviting entries from IGNOU Students for Best Innovation Award-2023 last date is 29th October 2023",
      imageUrl: "https://",
      author: "NCIDE",
      postedOn: "4 hours ago"),
  Article(
    title:
        "Dissemination of Information related to Term End Examination of M.Sc. (Geography) Programme (MSCGG)",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "2 days ago",
  ),
  Article(
    title:
        "Last date for submission of Online Examination Form for the Term end Examination December 2023 without late fee has been extended till 22nd 2023 for ODL & OL(Online) Programmes",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "22 hours ago",
  ),
  Article(
    title:
        "Extension of last date for submission of Assignment for both ODL and Online Programmes for December 2023 Examination is up to 31st October 2023",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "2 hours ago",
  ),
  Article(
    title:
        "Observance of Vigilance Awareness Week- 2023 in IGNOU from 30th October to 5th November 2023)",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "10 days ago",
  ),
  Article(
    title:
        "Online submission of DECE04 Project Report of DECE Programme for December 2023 TEE",
    author: "IGNOU Delhi",
    imageUrl: "https://",
    postedOn: "10 hours ago",
  ),
];
