import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.list}) : super(key: key);

  final List list;
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    final List listData = widget.list;

    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Checkbox(
                  value: listData[index]["isChecked"] == 1 ? true : false,
                  onChanged: (val) {
                    setState(
                      () {
                        listData[index]["isChecked"] = val == true ? 1 : 0;
                      },
                    );
                  },
                ),
                Expanded(
                  child: Text(
                    listData[index]["content"],
                    style: TextStyle(
                      decoration: listData[index]["isChecked"] == 1
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    listData.removeAt(index);
                    setState(() {});
                  },
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
