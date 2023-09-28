import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/widgets/categories_item.dart';
import 'package:marketly_mobile/core/widgets/home_section.dart';
import 'package:marketly_mobile/core/widgets/product_card.dart';
import 'package:marketly_mobile/core/widgets/product_card_home.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding:EdgeInsetsDirectional.symmetric(horizontal: 15.w),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const HomeSection(
            title: 'Categories',
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 76.h),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                mainAxisExtent: 80.w,
                crossAxisCount: 1,
              ),
              itemBuilder: (context, index) {
                return const CategoriesItem(title: 'Phones');
              },
            ),
          ),
          const HomeSection(title: 'Special For You'),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 307.h),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                mainAxisExtent: 204.5.w,
                crossAxisCount: 1,
              ),
              itemBuilder: (context, index) {
                return const ProductCard(
                  title: 'Smart Watch Gen I',
                  dicCount: 'Disc 80%',
                  oldPrice: 200,
                  price: 159,
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const HomeSection(
            title: 'Most Popular',
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12,
                childAspectRatio: 326 / 126),
            itemBuilder: (context, index) {
              const HomeCustomCard(title: 'Xiomi MI Band', price: '600');
            },
          ),
        ],
      ),
    );
  }
}
