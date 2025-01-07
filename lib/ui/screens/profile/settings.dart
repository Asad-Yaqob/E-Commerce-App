import 'package:flutter/material.dart';

import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/comman/widgets/custome_heading.dart';
import 'package:capjewel/ui/widgets/home/custom_header.dart';
import 'package:capjewel/ui/widgets/profile/settings/setting_menu_tile.dart';
import 'package:capjewel/ui/widgets/profile/settings/user_profile_card.dart';

import 'package:capjewel/data/sample_data.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            CustomHeader(
              child: Column(
                children: [
                  // appbar
                  AppAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),

                  // user profile card
                  const UserProfileCard(),

                  const SizedBox(height: 40),
                ],
              ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Account Settings
                  Text(
                    'Account Settings',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  for (var item in accountSettings)
                    SettingMenuTile(
                      icon: item['icon'] as IconData,
                      title: item['title'] as String,
                      subTitle: item['subTitle'] as String,
                      onTap:
                          item['onPressedTile'] as void Function(BuildContext),
                    ),

                  const SizedBox(height: 20),

                  // Account Settings
                  const CustomeHeading(
                    title: 'App Settings',
                    color: Colors.black,
                  ),

                  const SizedBox(height: 20),

                  for (var item in appSettings)
                    SettingMenuTile(
                      icon: item['icon'] as IconData,
                      title: item['title'] as String,
                      subTitle: item['subTitle'] as String,
                      trailing: item['trailing'] as Widget?,
                    ),

                  const SizedBox(height: 20),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Logout')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
