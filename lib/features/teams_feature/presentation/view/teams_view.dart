import 'package:flutter/material.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/home_app_bar.dart';
import 'package:task_manager/features/teams_feature/presentation/view/wiget/teams_bottom_sheet.dart';
import 'package:task_manager/features/teams_feature/presentation/view/wiget/teams_view_body.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 60), child: HomeAppBar()),
      body: TeamsViewBody(),
    );
  }
}
