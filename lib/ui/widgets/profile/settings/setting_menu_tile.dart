import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String subTitle;
  final Widget? trailing;
  final void Function(BuildContext)? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: trailing,
      onTap: () => onTap!(context),
    );
  }
}
