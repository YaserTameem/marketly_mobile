import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/widgets/categories_item.dart';
import 'package:marketly_mobile/core/widgets/custom_app_bar.dart';
import 'package:marketly_mobile/core/widgets/home_article_card.dart';
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
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7, initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: const CustomAppBar(title: 'Marketly'),
      body: ListView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height:21.h ,),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 168.h),
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (selectedPage) {
                    setState(() {
                      _currentPage = selectedPage;
                    });
                  },
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsetsDirectional.only(end: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(8.r),
                        color: const Color(0xFFE5E5EA),
                      ),
                    );
                  },
                ),
                PositionedDirectional(
                  bottom: 11.h,
                  start: 0.w,
                  end: 0.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TabPageSelectorIndicator(
                        backgroundColor: _currentPage == 0
                            ? const Color(0xFFF35C56)
                            : const Color(0xFFC7C7CC),
                        borderColor: Colors.transparent,
                        size: 10,
                      ),
                      TabPageSelectorIndicator(
                        backgroundColor: _currentPage == 1
                            ? const Color(0xFFF35C56)
                            : const Color(0xFFC7C7CC),
                        borderColor: Colors.transparent,
                        size: 10,
                      ),
                      TabPageSelectorIndicator(
                        backgroundColor: _currentPage == 2
                            ? const Color(0xFFF35C56)
                            : const Color(0xFFC7C7CC),
                        borderColor: Colors.transparent,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
            constraints: BoxConstraints(
              maxHeight: 307.h,
            ),
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
              return const HomeCustomCard(
                title: 'Xiomi MI Band',
                price: '600',
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          const HomeSection(
            title: 'Article for you',
          ),
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12,
                childAspectRatio: 326 / 104),
            itemBuilder: (context, index) {
              return const HomeArticleCard();
            },
          ),
          SizedBox(height: 10.h,)
        ],
      ),
    );
  }
}

