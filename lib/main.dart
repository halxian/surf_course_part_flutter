import 'package:flutter/material.dart';
import 'package:surf_app_flutter/app_colors.dart';
import 'package:surf_app_flutter/control_button_panel.dart';
import 'package:surf_app_flutter/mock_data.dart';
import 'package:surf_app_flutter/person_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TestAppColors.background,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          TestAppStrings.appBar,
          style: TextStyle(color: TestAppColors.text),
        ),
        backgroundColor: TestAppColors.background,
        leading: const Icon(
          Icons.arrow_back,
          color: TestAppColors.accent,
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            MainPersonalDataSection(
              imgPath: TestAppMocks.avatarPath,
              name: TestAppMocks.name,
              status: TestAppMocks.status,
            ),
            SizedBox(height: 20),
            ControlButtonsPanel(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(
        background: TestAppColors.secondary,
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.background,
  }) : super(key: key);

  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: background,
        boxShadow: [
          BoxShadow(
            color: TestAppColors.shadow,
            offset: const Offset(0, -2),
            blurRadius: 4,
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icons.search,
            Icons.home,
            Icons.settings,
            Icons.logout,
          ]
              .map(
                (e) => Expanded(
                  child: Icon(
                    e,
                    color: TestAppColors.accent,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
