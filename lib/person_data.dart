import 'package:flutter/material.dart';
import 'package:surf_app_flutter/app_colors.dart';
import 'package:surf_app_flutter/avatar.dart';

class MainPersonalDataSection extends StatelessWidget {
  final String name;
  final String imgPath;
  final String status;

  const MainPersonalDataSection({
    required this.name,
    required this.imgPath,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          radius: 60,
          showIcon: true,
          imgPath: imgPath,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                  color: TestAppColors.text,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                status,
                style: const TextStyle(
                  fontSize: 13,
                  color: TestAppColors.secondaryText,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
