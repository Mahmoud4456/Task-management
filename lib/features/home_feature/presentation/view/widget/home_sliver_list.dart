import 'package:flutter/material.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/sliver_list_item.dart';

class HomeSliverList extends StatelessWidget {
  const HomeSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate ((context  , index) {
          return const SliverListItem();
        },
          childCount: 5,
        )
    );
  }
}

