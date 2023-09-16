import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.dicCount,
    this.image,
    required this.title,
    required this.price,
    required this.oldPrice,
     this.onPress,
    super.key,
  });

  final String dicCount;
  final String? image;
  final String title;
  final double price;
  final double oldPrice;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      // height: ,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(24, 40),
                color: const Color(0xFF22292E).withOpacity(0.2),
                blurRadius: 80)
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
                  margin: const EdgeInsetsDirectional.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(30),
                    color: const Color(0xFFE5E5EA),
                    // image:DecorationImage(image: )
                  ),
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 8, vertical: 4),
                  margin: const EdgeInsetsDirectional.only(start: 6, top: 6),
                  width: 70,
                  height: 26,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [kMaincolor1, kMaincolor2]),
                      borderRadius: BorderRadiusDirectional.circular(9)),
                  child: Text(
                    dicCount,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF8F8F8)),
                  ),
                ),
              ],
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0XFF090F24)),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '\$$price',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0XFF090F24)),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  '\$$oldPrice',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0XFF8A8A8E),
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
                  onPressed: onPress,
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Color(
                      (0xFFFF4343),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
