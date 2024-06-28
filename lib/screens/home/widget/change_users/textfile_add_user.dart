import 'package:flutter/material.dart';

class TextfileAddUser extends StatefulWidget {
  const TextfileAddUser(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.onChanged, this.textController});
  final String labelText;
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? textController;
  @override
  State<TextfileAddUser> createState() => _TextfileAddUserState();
}

class _TextfileAddUserState extends State<TextfileAddUser> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textController,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: (widget.labelText),
          hintText: (widget.hintText)),
    );
  }
}
