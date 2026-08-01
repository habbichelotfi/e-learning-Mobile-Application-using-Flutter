import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Profile'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserHeader(),
            const SizedBox(height: 20),
            const Text(
              'General',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildGeneralSettings(),
            const SizedBox(height: 20),
            const Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            _buildNotificationSwitch(),
            const SizedBox(height: 15),
            _buildSignOutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue.shade800,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: () {},
        title: const Text(
          'John',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(Icons.person, color: Colors.blue),
        ),
        trailing: const Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  Widget _buildGeneralSettings() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          _buildSettingsTile(
            icon: Icons.lock_outline,
            title: 'Change Password',
            onTap: () => _showChangePasswordDialog(),
          ),
          const Divider(height: 1),
          _buildSettingsTile(
            icon: Icons.language_outlined,
            title: 'Change Language',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      leading: Icon(icon, color: Colors.black),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.black),
    );
  }

  Widget _buildNotificationSwitch() {
    return SwitchListTile(
      value: notification,
      onChanged: (val) {
        setState(() {
          notification = val;
        });
      },
      activeColor: Colors.blue.shade800,
      contentPadding: EdgeInsets.zero,
      title: const Text('Received notification'),
    );
  }

  Widget _buildSignOutButton() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue.shade800,
      child: ListTile(
        onTap: () {},
        title: const Text(
          'Sign Out',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const Icon(Icons.logout, color: Colors.redAccent),
      ),
    );
  }

  void _showChangePasswordDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Your New Password',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('Submit', style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        );
      },
    );
  }
}
