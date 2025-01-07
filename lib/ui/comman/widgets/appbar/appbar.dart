import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.actions,
    this.color = Colors.transparent,
    this.resetIndex,
    this.isLeading = false,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Color color;
  final bool isLeading;
  final void Function()? resetIndex;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLeading
          ? GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                if (resetIndex != null) {
                  resetIndex!();
                }
              },
              child: const Icon(Icons.arrow_back))
          : null,
      title: title,
      backgroundColor: color,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
