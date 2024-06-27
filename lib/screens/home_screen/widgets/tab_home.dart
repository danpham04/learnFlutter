import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key, required this.textTab, required this.iconTab, this.colorText = Colors.white, this.colorIcon = Colors.white});
  final String textTab;
  final IconData iconTab;
  final Color? colorIcon;
  final Color? colorText;
  
  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        widget.iconTab,
        color: widget.colorIcon,
      ),
      child: Text(
        widget.textTab,
        style: TextStyle(color: widget.colorText),
      ),
    );
  }
}
