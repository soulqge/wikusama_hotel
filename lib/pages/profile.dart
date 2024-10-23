import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(selectedItem: 3),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(44, 75, 108, 1)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sapphire Neysa',
                        style: GoogleFonts.workSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit, size: 16),
                label: Text(
                  'Edit Profile',
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color.fromRGBO(44, 75, 108, 1)),
                  backgroundColor: Colors.white,
                  foregroundColor: Color.fromRGBO(44, 75, 108, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(249, 252, 255, 1),
                      Color.fromRGBO(230, 235, 240, 1)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _buildSettingsTile('Change Password', Icons.lock_outline),
                    _buildDivider(),
                    _buildSettingsTile('Language', Icons.language_outlined),
                    _buildDivider(),
                    _buildSettingsTile('Help', Icons.help_center_rounded),
                    _buildDivider(),
                    _buildSettingsTile('Privacy Center', Icons.privacy_tip_outlined),
                    _buildDivider(),
                    _buildSettingsTile('Terms and Policies', Icons.summarize_outlined),
                    _buildDivider(),
                    _buildSettingsTile('About App', Icons.info_outline),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(249, 252, 255, 1),
                      Color.fromRGBO(230, 235, 240, 1)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _buildSettingsTileL('Log Out', Color.fromRGBO(76, 152, 233, 1)),
                    _buildDivider(),
                    _buildSettingsTileL('Delete Account', Color.fromRGBO(207, 58, 65, 1)),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsTile(String title, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: Icon(icon, size: 16, color: Color.fromRGBO(44, 75, 108, 1),),
      onTap: () {},
    );
  }

  Widget _buildSettingsTileL(String title, Color color) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.workSans(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {},
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey[300],
      thickness: 1,
      height: 1,
    );
  }
}
