import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  const CustomAppBar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: title,
    );
  }
}
