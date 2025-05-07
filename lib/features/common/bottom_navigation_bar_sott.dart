import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarSott extends StatelessWidget {
  const BottomNavigationBarSott({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 80,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SottBottomIcon(title: "Главная", icon: "assets/home.svg", isCurrent: true),
              SottBottomIcon(title: "Поиск", icon: "assets/search.svg", isCurrent: false),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/plus_home.svg",
                      width: 51.w,
                      height: 51.h,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      "assets/add.svg",
                      width: 21.w,
                      height: 21.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SottBottomIcon(title: "Чат", icon: "assets/discussion.svg", isCurrent: false),
              SottBottomIcon(title: "Профиль", icon: "assets/profile.svg", isCurrent: false)
            ],
          ),
        ),
        SizedBox(height: 50.h,)
      ],
    );
  }
  }

class SottBottomIcon extends StatelessWidget {
  const SottBottomIcon({super.key, required this.title, required this.icon, required this.isCurrent});

  final String title, icon;

  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black.withValues(alpha: (isCurrent)?1:0.4),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
