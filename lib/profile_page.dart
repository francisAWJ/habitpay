import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://i.pravatar.cc/250?u=mail@ashallendesign.co.uk"),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'john.doe@example.com',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildSectionTitle('Account'),
            _buildListTile(
              context,
              icon: Icons.person,
              title: 'Biodata',
              onTap: () {},
            ),
            _buildListTile(
              context,
              icon: Icons.lock,
              title: 'Ubah Password',
              onTap: () {},
            ),
            _buildListTile(
              context,
              icon: Icons.payment,
              title: 'Metode Pembayaran',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Preferensi'),
            _buildListTile(
              context,
              icon: Icons.notifications,
              title: 'Notifikasi',
              onTap: () {},
            ),
            _buildListTile(
              context,
              icon: Icons.language,
              title: 'Bahasa',
              onTap: () {},
            ),
            _buildListTile(
              context,
              icon: Icons.dark_mode,
              title: 'Mode Gelap',
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
              onTap: () {},
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: add logout logic
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: trailing ?? const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}