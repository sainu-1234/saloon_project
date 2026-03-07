import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/app_utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(height: 40),

          // Profile Avatar
          const CircleAvatar(radius: 50, backgroundColor: ColorUtils.blue),

          const SizedBox(height: 15),

          // User Name
          const Text(
            "John Doe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          // Email
          const Text("johndoe@email.com", style: TextStyle(color: Colors.grey)),

          const Spacer(),

          // Logout Button
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () => _showLogoutDialog(context),
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // close dialog
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context); // close dialog
              await FirebaseAuth.instance.signOut();
              AppUtils.showSnackbar(
                context,
                message: "Logout Successfull",
                color: Colors.redAccent,
              );
            },
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}
