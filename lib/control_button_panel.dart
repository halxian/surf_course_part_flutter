import 'package:flutter/material.dart';
import 'package:surf_app_flutter/app_colors.dart';
import 'package:surf_app_flutter/custom_button.dart';

class ControlButtonsPanel extends StatelessWidget {
  const ControlButtonsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            title: TestAppStrings.editBtnLbl,
            background: TestAppColors.accent,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: CustomButton(
            title: TestAppStrings.logoutBtnLbl,
            background: TestAppColors.secondary,
          ),
        ),
      ],
    );
  }
}
