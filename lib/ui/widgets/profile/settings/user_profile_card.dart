import 'package:capjewel/ui/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/logos/profile.png'),
      ),
      title: Text(
        'John Doe',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        'john.doe@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
          icon: const Icon(Icons.edit_note_outlined)),
    );
  }
}
