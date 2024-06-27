import 'package:flutter/material.dart';

class ListtileSettingAcc extends StatefulWidget {
  const ListtileSettingAcc(
      {super.key, required this.textList, required this.iconList, this.check});
  final String textList;
  final Widget iconList;
  final Function()? check;
  @override
  State<ListtileSettingAcc> createState() => _ListtileSettingAccState();
}

class _ListtileSettingAccState extends State<ListtileSettingAcc> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.textList,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: IconButton(
        icon: widget.iconList,
        onPressed: widget.check,
      ),
    );
  }
}
