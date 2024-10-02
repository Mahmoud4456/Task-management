import 'package:flutter/material.dart';
import 'package:task_manager/features/teams_feature/presentation/view/wiget/search_bar.dart';

class TeamsViewBody extends StatelessWidget {
  const TeamsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          const CustomSearchBar(),

        ],
      ),
    );
  }
}

