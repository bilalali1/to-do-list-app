import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Widget? leading;
  final List<Widget> ?actions;

  CustomAppBarWidget({
    required this.title,
    this.leading,
    this.actions,
    Key ?key
  }) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: leading,
      elevation: 1,
      shadowColor: Colors.black54,

      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.5),
          child: Container(
          )),

      title: Text(title , style: const TextStyle(
          color: Colors.black
      ),),

      actions: actions,

    );
  }
}