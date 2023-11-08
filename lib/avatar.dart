import 'package:flutter/material.dart';
import 'package:surf_app_flutter/app_colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final bool showIcon;
  final String imgPath;

  const CustomCircleAvatar({
    required this.radius,
    required this.showIcon,
    required this.imgPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: radius * 2,
      child: Stack(
        children: [
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: TestAppColors.avatarBorder,
                width: 2.5,
              ),
              image: DecorationImage(
                image: NetworkImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (showIcon)
            Positioned(
              right: 7,
              bottom: 7,
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: TestAppColors.accent,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.edit,
                  size: 17,
                  color: TestAppColors.text,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
