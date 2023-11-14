import 'package:rms/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final void Function()? onPressed;

  const SecondaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.width = double.infinity,
    this.color = AppColors.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        disabledColor: AppColors.primary.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r), side: BorderSide.none),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
