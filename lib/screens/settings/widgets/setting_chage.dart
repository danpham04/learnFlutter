import 'package:flutter/material.dart';

class SettingChage extends StatefulWidget {
  
  const SettingChage({super.key, required this.icon, required this.textName, this.colorIcon});
  final IconData icon;
  final String textName;
  final Color? colorIcon;
  @override
  State<SettingChage> createState() => _SettingChageState();
}

class _SettingChageState extends State<SettingChage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 2)),
      ),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: widget.colorIcon,
          ),
          Text(
            widget.textName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
