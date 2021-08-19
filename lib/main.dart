import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) => MaterialApp(
    title: 'Switch Example',
    home: Scaffold(
      appBar: AppBar(title: Text('Switch Example'),),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: SwitchExample(),
      ),
    ),
  );
}

class SwitchExample extends StatefulWidget {
  @override
  createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  var label = 'スイッチを選択してください';
  var isChecked = false;

  @override
  build(BuildContext context) => Column(
    children: [
      Text('$label'),
      SizedBox(height: 15,),
      Row(
        children: [
          Expanded(child: Text('やる気')),
          Switch(
            value: isChecked,
            onChanged: (value) => setState(() {
              label = value ? 'やる気でました！' : 'やる気なくなりました↓';
              isChecked = value;
            }),
          ),
        ],
      ),
    ],
  );
}
