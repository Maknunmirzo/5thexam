import 'package:exam_5/data/models/real_estate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RealEstateWidget extends StatelessWidget {
  const RealEstateWidget({super.key, required this.estate});

  final RealEstateModel estate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            width: 169,
            height: 128,
            fit: BoxFit.cover,
            estate.image,
          ),
        ),
        Container(
          width: 169.w,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "${estate.price} ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${estate.currency}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 169.w,
                    child: Text(
                      "${estate.category}•${estate.numOfRooms}ком.•${estate.floor} из ${estate.totalFloors}•${estate.area}м2",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      softWrap: true,
                      maxLines: 1,

                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  spacing: 5.w,
                    children: [
                      SvgPicture.network(
                        estate.nearestPopularPlace.image,
                        width: 20.w,
                        height: 20.h,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "${estate.nearestPopularPlace.title}",
                        style: TextStyle(
                          color: Colors.black.withValues(alpha: 0.4),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "${estate.nearestPopularPlace.distance}m",
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.4),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
