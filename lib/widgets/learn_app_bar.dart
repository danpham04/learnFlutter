import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnAppBar extends StatelessWidget implements PreferredSizeWidget {
  LearnAppBar(
      {super.key,
      this.centerTitle = true,
      this.showLeading = true,
      this.leading,
      this.flexibleSpace,
      required this.titleName,
      this.actions,
      this.bottom,
      this.heightAppBar = kToolbarHeight});
  final bool centerTitle;
  final bool showLeading;
  final Widget? leading;
  final Widget? flexibleSpace;
  final String titleName;
  final List<Widget>? actions;
  PreferredSizeWidget? bottom;
  final double heightAppBar;

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,

      /// 1, leading phải có thể null

      // cú pháp toán tử 3 ngôi: tương tự như if và else khác ở chỗ là dùng được trong widget
      // cú pháp toán tử 3 ngôi: a= true ? function<Widget> : function<Widget>
      automaticallyImplyLeading: showLeading, // tao có show leading ra không
      /// 2, leading không truyền giá trị thì có icon back mặc định
      /// 3, Leading có thể là widgets
      leading: showLeading
          ? leading ??
              IconButton(
                  onPressed: () {
                    // hàm nhảy về màn hình trước đó
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 24,
                  ))
          : null,
      title: Text(
        titleName,
        style: const TextStyle(color: Colors.white),
      ),
      actions: actions,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }
}
