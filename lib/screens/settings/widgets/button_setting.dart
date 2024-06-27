import 'package:flutter/material.dart';

class ButtonSetting extends StatefulWidget {
  const ButtonSetting({
    super.key,
    required this.textButton,
    required this.sizeButton,
    this.colorButton,
    this.hanhDong,
  });
  final String textButton;
  final Size sizeButton;
  final Color? colorButton;
  final Function()? hanhDong;
  @override
  State<ButtonSetting> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ButtonSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          
          style: TextButton.styleFrom(
            backgroundColor: widget.colorButton,
            minimumSize: widget.sizeButton,
          ),
          onPressed: widget.hanhDong,
          child: Text(
            widget.textButton,
            style: const TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
