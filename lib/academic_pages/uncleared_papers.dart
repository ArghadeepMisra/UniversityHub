import 'package:flutter/material.dart';

class UnclearedPaper extends StatelessWidget {
  const UnclearedPaper({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Unleared Papers'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const ListsWithCards());
  }
}

class ListsWithCards extends StatelessWidget {
  const ListsWithCards({super.key});
  @override
  Widget build(BuildContext context) {
    // Sample data for three lists
    List<List<String>> listsData = [
      [
        'Subject 7',
      ],
      ['Subject 5'],
    ];

    return ListView.builder(
      itemCount: listsData.length,
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> listData;

  const CardList({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const ListTile(
            title: Text('New Semester'),
          ),
          const Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listData[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
