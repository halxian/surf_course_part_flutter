import 'package:flutter/material.dart';
import 'package:surf_app_flutter/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Color? background;
  final String title;

  const CustomButton({
    required this.title,
    this.background,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(color: TestAppColors.text),
      ),
    );
  }
}
