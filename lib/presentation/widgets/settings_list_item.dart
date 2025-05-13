import 'package:flutter/material.dart';

import '../../domain/models/settings_item.dart';

class SettingsListItem extends StatelessWidget {
  final SettingsItem item;

  const SettingsListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: item.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              item.icon,
              color: Colors.white,
              size: 28,
            ),
          ),
          title: Text(
            item.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            item.subtitle,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          onTap: item.onTap,
        ),
      ),
    );
  }
}
