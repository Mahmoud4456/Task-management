import 'package:flutter/material.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/custom_floating_action_button.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/home_app_bar.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 60), child: HomeAppBar()),
      body:  HomeViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
