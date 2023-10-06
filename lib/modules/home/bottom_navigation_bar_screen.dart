import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
import 'package:marketly_mobile/core/widgets/custom_app_bar.dart';
import 'package:marketly_mobile/models/bn_screens.dart';
import 'package:marketly_mobile/modules/cart/cart_screen.dart';
import 'package:marketly_mobile/modules/favourite/favourite_screen.dart';
import 'package:marketly_mobile/modules/home/home_screen.dart';
import 'package:marketly_mobile/modules/settings/profile_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const String screenRoute = '/BottomNavigationBarScreen';

  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndexItem = 0;
  final List<BnScreen> _screen = <BnScreen>[
    BnScreen(
      screen: const HomeScreen(),
      title: 'Marketly',
      firstIcon: Icons.search_outlined,
      secondIcon: Icons.shopping_cart_outlined,
    ),
    BnScreen(
      screen: const CartScreen(),
      title: 'My Cart',
    leadingIcon: Icons.arrow_back_ios_outlined,
    ),
    BnScreen(
      screen: const FavouriteScreen(),
      title: 'My Favourite',
      secondIcon: Icons.shopping_cart_outlined,
    ),
    BnScreen(
      screen: const ProfileScreen(),
      title: 'My Profile',
      firstIcon: Icons.shopping_cart_outlined,
      secondIcon: Icons.chat_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _screen[_selectedIndexItem].title,
        firstIcon: _screen[_selectedIndexItem].firstIcon,
        secondIcon: _screen[_selectedIndexItem].secondIcon,
        leadingIcon: _screen[_selectedIndexItem].leadingIcon,
      ),
      body: _screen[_selectedIndexItem].screen,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        // showSelectedLabels: false,
        // showUnselectedLabels:false ,
        elevation: 40,
        unselectedFontSize: 12.sp,
        selectedFontSize: 12.sp,
        fixedColor: AppColor.secondaryColor,
        // selectedItemColor:AppColor.secondaryColor,
        unselectedItemColor: AppColor.secondaryGrayColor,
        onTap: (int selectedIndexItem) {
          setState(() {
            _selectedIndexItem = selectedIndexItem;
          });
        },
        currentIndex: _selectedIndexItem,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
