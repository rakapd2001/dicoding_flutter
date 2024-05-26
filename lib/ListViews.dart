import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        body: ListSeparated(numberList: numberList));
  }
}

class ListSeparated extends StatelessWidget {
  const ListSeparated({
    super.key,
    required this.numberList,
  });

  final List<int> numberList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: numberList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.amber, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int indext) {
        return const Divider();
      },
    );
  }
}

class ListBuilder extends StatelessWidget {
  const ListBuilder({
    super.key,
    required this.numberList,
  });

  final List<int> numberList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numberList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.amber, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        );
      },
    );
  }
}
