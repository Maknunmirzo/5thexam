import 'package:exam_5/features/home_page/widgets/home_page_app_bar.dart';
import 'package:exam_5/features/home_page/widgets/home_page_navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/bottom_navigation_bar_sott.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      bottomNavigationBar: BottomNavigationBarSott(),
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 102,
            floating: true,
            pinned: false,
            snap: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomePageNavigations(icon: "assets/key.svg"),
                HomePageNavigations(icon: "assets/sale.svg"),
                HomePageNavigations(icon: "assets/rent.svg"),
                HomePageNavigations(icon: "assets/rent_out.svg"),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            sliver: SliverGrid.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s",
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
