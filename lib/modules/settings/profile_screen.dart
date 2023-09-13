import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/custom_profile_listTile.dart';

class ProfileScreen extends StatelessWidget {
  static const String screenRoute = '/profile_screen';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: heading),
        ),
        title: Text(
          'My Profile',
          style: heading1,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: heading,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(100),
                  child: const Image(
                    image: AssetImage('images/profile.jpg'),
                  )),
            ),
            const SizedBox(height: 10),
            Text(
              'Yaser Tameem',
              style: heading2,
            ),
            const SizedBox(height: 50),
            CustomProfileListTile(
              title: 'My Profile',
              leading: Icons.account_circle_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'My Address',
              leading: Icons.location_on_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'Notification',
              leading: Icons.notifications_on_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'Help Center',
              leading: Icons.verified_user_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            const CustomProfileListTile(
              title: 'Logout',
              leading: Icons.logout_outlined,
              marginBottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
