import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeCustomCard extends StatefulWidget {
  const HomeCustomCard({
    required this.title,
    required this.price,
    this.image,
    super.key,
  });
  final String title;
  final String price;
  final String? image;
  @override
  State<HomeCustomCard> createState() => _HomeCustomCardState();
}

class _HomeCustomCardState extends State<HomeCustomCard> {
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
                blurRadius: 80.r),
          ]),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8),
        child: Row(
          children: [
            Container(
              height: 110,
              width: 91,
              margin: EdgeInsetsDirectional.only(end: 9.h),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadiusDirectional.circular(30.r),
                color: const Color(0xFFE2E3E7),
                // image:DecorationImage(image: )
              ),
            ),

            Row(

              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       widget.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: const Color(0XFF090F24)),
                      ),
                      SizedBox(height: 4.h,),
                      RatingBar.builder(
                          initialRating: 3,
                          itemSize: 18.sp,
                          minRating: 1,
                          allowHalfRating: true,
                          itemBuilder:(context,_)=>const Icon(Icons.star,color: Colors.amber) ,
                          onRatingUpdate: (rating){}),
                      SizedBox(height: 4.h,),
                      Text(
                        '\$${widget.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: const Color(0XFF090F24)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 90.w),
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE1EFE9),
                      borderRadius: BorderRadiusDirectional.circular(20.r)
                  ),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    padding: EdgeInsetsDirectional.zero,
                    constraints: const BoxConstraints(),
                    onPressed:_toggleFavorite,
                    icon: _isFavorite
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_outline),
                    color: const Color(0xFFFF4343),
                      // const Color(0xFFFF4343),
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
