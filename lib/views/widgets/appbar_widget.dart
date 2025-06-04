import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:rickandmortyapp/app/router.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool transparentBackground;
  final bool hideSettings;
  const AppBarWidget({
    super.key,
    required this.title,
    this.transparentBackground = false,
    this.hideSettings = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: transparentBackground ? Colors.transparent : null,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
       
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}