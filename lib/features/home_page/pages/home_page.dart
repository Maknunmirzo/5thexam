import 'package:exam_5/features/home_page/manager/home_bloc.dart';
import 'package:exam_5/features/home_page/manager/home_state.dart';
import 'package:exam_5/features/home_page/widgets/home_page_app_bar.dart';
import 'package:exam_5/features/home_page/widgets/real_estate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/bottom_navigation_bar_sott.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarSott(),
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          HomePageAppBar(),
          BlocBuilder<HomeBloc, HomeState>(
            builder:
                (context, state) =>
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  sliver: SliverGrid.builder(
                    itemCount: state.estates.length,
                    itemBuilder: (context, index) =>
                        RealEstateWidget(estate: state.estates[index],),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisSpacing: 1.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 169.w / 202.h,
                    ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
