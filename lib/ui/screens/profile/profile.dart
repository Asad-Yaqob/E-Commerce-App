import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/comman/widgets/custome_heading.dart';
import 'package:capjewel/ui/widgets/profile/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title:
            Text('Your Profile', style: Theme.of(context).textTheme.titleLarge),
        isLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/logos/profile.png'),
                      backgroundColor: Colors.transparent,
                      foregroundImage: AssetImage('assets/logos/profile.png'),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change Profile Picture',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
              ),

              // Profile Information
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              const CustomeHeading(
                  title: 'Personal Details', color: Colors.black),
              const SizedBox(height: 20),
              ProfileMenu(
                  title: 'Name', value: 'Jhon Doe', onProfilePress: () {}),
              ProfileMenu(
                  title: 'Username',
                  value: 'jhon sheldon',
                  onProfilePress: () {}),

              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),

              // Personal Information
              const CustomeHeading(
                  title: 'Personal Information', color: Colors.black),
              const SizedBox(height: 20),

              ProfileMenu(
                  title: 'User ID', value: '09876', onProfilePress: () {}),
              ProfileMenu(
                  title: 'Email',
                  value: 'Jhon@gmail.com',
                  onProfilePress: () {}),
              ProfileMenu(
                  title: 'Phone Number',
                  value: '+92 3164352851',
                  onProfilePress: () {}),
              ProfileMenu(
                  title: 'Gender', value: 'male', onProfilePress: () {}),
              ProfileMenu(
                  title: 'Date of Birth',
                  value: '15-11-2003',
                  onProfilePress: () {}),

              const SizedBox(height: 20),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Close Account',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
