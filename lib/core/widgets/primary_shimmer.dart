import 'package:rms/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class PrimaryShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder border;

  const PrimaryShimmer.rectangle({
    Key? key,
    this.width = double.infinity,
    required this.height,
    this.border = const RoundedRectangleBorder(),
  }) : super(key: key);

  const PrimaryShimmer.circular({
    Key? key,
    required this.width,
    required this.height,
    this.border = const CircleBorder(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.materialPrimary[50]!,
      highlightColor: AppColors.materialPrimary[100]!,
      direction: Get.locale!.languageCode == 'ar'
          ? ShimmerDirection.rtl
          : ShimmerDirection.ltr,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: AppColors.materialPrimary[50]!,
          shape: border,
        ),
      ),
    );
  }
}
