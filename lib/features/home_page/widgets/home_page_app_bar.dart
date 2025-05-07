import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page_navigations.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Size get preferredSize => Size(double.infinity, 120.h);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      sliver: SliverAppBar(
        floating: true,
        pinned: false,
        snap: true,
        // toolbarHeight: 129.h,
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset("assets/background.png"),
        ),
        leadingWidth: 100.w,
        leading: Row(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/sott.svg",
                    width: 36.w,
                    height: 36.h,
                    fit: BoxFit.cover,
                  ),
                  SvgPicture.asset(
                    "assets/logo.svg",
                    width: 14.w,
                    height: 17.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Text(
              "SOTT",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/notifications.svg",
              width: 28.w,
              height: 28.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 102.h), child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomePageNavigations(icon: "assets/key.svg"),
            HomePageNavigations(icon: "assets/sale.svg"),
            HomePageNavigations(icon: "assets/rent.svg"),
            HomePageNavigations(icon: "assets/rent_out.svg"),
          ],
        )),
      ),
    );
  }


}
