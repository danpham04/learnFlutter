import 'package:flutter/material.dart';

class ListileSettingNoti extends StatefulWidget {
  const ListileSettingNoti({super.key, required this.textNameAction, this.colorActive, this.colorInactive, });
  final String textNameAction;
  final Color? colorActive;
  final Color? colorInactive;
  @override
  State<ListileSettingNoti> createState() => _ListileSettingNotiState();
}

class _ListileSettingNotiState extends State<ListileSettingNoti> {
  bool _action = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.textNameAction,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: Switch(
        value: _action,
        onChanged: (value) {
          setState(() {
            _action = value;
          });
        },
        activeColor: widget.colorActive,
        inactiveThumbColor: widget.colorInactive,
      ),
    );
  }
}
