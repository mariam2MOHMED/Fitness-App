import 'package:fitness/core/responsive/size_helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_colors.dart';

class SvgNavItem extends StatelessWidget {
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  const SvgNavItem({
    super.key,
    required this.iconPath,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.all(10),

        child:
        SvgPicture.asset(
          iconPath,
          width: context.sizeProvider.width * 0.06,
          height: context.sizeProvider.height * 0.06,
          colorFilter: ColorFilter.mode(
            isActive
                ? AppColors.orange[AppColors.baseColor]!
                : AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
