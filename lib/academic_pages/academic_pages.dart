import 'package:flutter/material.dart';
import 'package:proj/academic_pages/uncleared_papers.dart';

class AcademicPages extends StatelessWidget {
  const AcademicPages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cleared Papers'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UnclearedPaper()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "Uncleared",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
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
        'Subject 1',
        'Subject 2',
        'Subject 3',
        'Subject 4',
        'Subject 5',
        'Subject 6'
      ],
      ['Subject 1', 'Subject 2', 'Subject 3', 'Subject 4'],
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
