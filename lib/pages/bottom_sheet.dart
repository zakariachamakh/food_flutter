import 'package:flutter/material.dart';

class BottomSheetFrom extends StatefulWidget {
  const BottomSheetFrom({Key? key}) : super(key: key);

  @override
  _BottomSheetFromState createState() => _BottomSheetFromState();
}

class _BottomSheetFromState extends State<BottomSheetFrom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => buildTheBottomSheet(context),
            child: Text('Click Here the Teacher '),
          ),
        ],
      ),
    );
  }

  buildTheBottomSheet(BuildContext contextBuild) {
    return showModalBottomSheet<Widget>(
        builder: (BuildContext contextBuild) {
          return Container(
            child: DefaultTabController(
              length: 2,
              child: ListView(
                children: [
                  Flexible(
                    child: TabBar(
                      tabs: [
                        Text("1"),
                        Text("2"),
                      ],
                    ),
                  ),
                  TabBarView(
                    children: [
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        context: contextBuild);
  }
}
