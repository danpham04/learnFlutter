import 'package:flutter/material.dart';

class ShowInput extends StatefulWidget {
  const ShowInput({
    super.key,
    required this.text,
    required this.textTile,
    required this.subTile,
  });

  final String text;
  final String textTile;
  final String subTile;

  @override
  State<ShowInput> createState() => _ShowInputState();
}

class _ShowInputState extends State<ShowInput> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: CircleAvatar(
      //   child: Text(widget.text),
      // ),
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.blue),
          shape: BoxShape.circle,
        ),
        
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
      ),
      title: Text(widget.textTile),

      subtitle: Text(widget.subTile),
    );
  }
}
