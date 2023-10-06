import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';

class HomeArticleCard extends StatelessWidget {
  const HomeArticleCard({
    super.key,
  });

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
              height: 82.h,
              width: 78.w,
              margin: EdgeInsetsDirectional.only(end: 9.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(30.r),
                color: const Color(0xFFE2E3E7),
                // image:DecorationImage(image: )
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                    vertical: 13.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Lauch Smart \n Product', style: heading4),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '200+ more articles',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColor.paragraf),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 75.w,
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsetsDirectional.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_outlined,
                    size: 30,
                  ),
                  color: AppColor.kMaincolor1,
                  // const Color(0xFFFF4343),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
