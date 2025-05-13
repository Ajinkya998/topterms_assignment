import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../domain/models/settings_item.dart';
import '../widgets/profile_section.dart';
import '../widgets/settings_list_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingsItem> settingsItems = [
      SettingsItem(
        title: 'Sign in options',
        subtitle: 'Password and e-mail',
        icon: Icons.door_sliding_outlined,
        backgroundColor: AppColors.signInOptionBg,
      ),
      SettingsItem(
        title: 'Link to you',
        subtitle: 'Direct link to your chat',
        icon: Icons.link,
        backgroundColor: AppColors.linkBg,
      ),
      SettingsItem(
        title: 'Welcome message',
        subtitle: 'Add, edit, delete',
        icon: Icons.mail_outline,
        backgroundColor: AppColors.welcomeBg,
      ),
      SettingsItem(
        title: 'Notifications',
        subtitle: 'Mute or unmute chats',
        icon: Icons.notifications_outlined,
        backgroundColor: AppColors.notificationBg,
      ),
      SettingsItem(
        title: 'Storage',
        subtitle: 'Set cache limits',
        icon: Icons.storage_outlined,
        backgroundColor: AppColors.storageBg,
      ),
      SettingsItem(
        title: 'Confidentiality',
        subtitle: 'Blocked users',
        icon: Icons.lock_outline,
        backgroundColor: AppColors.confidentialityBg,
      ),
      SettingsItem(
        title: 'Interface',
        subtitle: 'Language, background, ...',
        icon: Icons.tune,
        backgroundColor: AppColors.interfaceBg,
      ),
      SettingsItem(
        title: 'Linked devices',
        subtitle: 'Active sessions',
        icon: Icons.devices_other,
        backgroundColor: AppColors.linkedDevicesBg,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileSection(),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: settingsItems.length,
              itemBuilder: (context, index) {
                return SettingsListItem(item: settingsItems[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.link, color: Colors.teal),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline, color: Colors.blue),
                onPressed: () {},
              ),
              const CircleAvatar(
                backgroundColor: AppColors.profileBg,
                radius: 18,
                child: Text(
                  'Fe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
