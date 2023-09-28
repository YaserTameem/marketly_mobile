import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/constant.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    required this.dicCount,
    this.image,
    required this.title,
    required this.price,
    required this.oldPrice,
    super.key,
  });

  final String dicCount;
  final String? image;
  final String title;
  final double price;
  final double oldPrice;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(30.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(24, 40),
                color: const Color(0xFF22292E).withOpacity(0.1),
                blurRadius: 80.r)
          ]),

      child: Padding(
        padding: const EdgeInsetsDirectional.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 152,
                  margin: EdgeInsetsDirectional.only(bottom: 8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(30.r),
                    color: const Color(0xFFE5E5EA),
                    // image:DecorationImage(image: )
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 8.w, vertical: 4.h),
                  margin: EdgeInsetsDirectional.only(start: 6.w, top: 6.h),
                  width: 70.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [kMaincolor1, kMaincolor2]),
                      borderRadius: BorderRadiusDirectional.circular(9.r)),
                  child: Text(
                    widget.dicCount,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFF8F8F8)),
                  ),
                ),
              ],
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: const Color(0XFF090F24)),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              '\$${widget.price}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: const Color(0XFF090F24)),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  '\$${widget.oldPrice}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0XFF8A8A8E),
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 2,
                  ),
                ),
                const Spacer(),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    padding: EdgeInsetsDirectional.zero,
                    constraints: const BoxConstraints(),
                    onPressed:_toggleFavorite,
                    icon: _isFavorite
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_outline),
                    color: const Color(0xFFFF4343),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
