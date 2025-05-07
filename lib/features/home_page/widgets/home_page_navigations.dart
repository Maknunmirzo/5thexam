import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePageNavigations extends StatelessWidget {
  const HomePageNavigations({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 80.w,
            width: 80.h,
            decoration: BoxDecoration(
              color: Color(0xffFFCE48),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(icon)),
        ],
      ),
    );
  }
}
