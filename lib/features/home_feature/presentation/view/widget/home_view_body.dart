import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors.dart';
import 'package:task_manager/features/home_feature/presentation/view/widget/home_sliver_list.dart';

import 'custom_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
        child:   Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:16),
                  child: Text("TaskList" , style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold , color: primaryColor),),
                )
              ],
            ),
          ),
        ),
         SliverPadding(
             padding: EdgeInsets.symmetric(horizontal: 22) ,
              sliver: HomeSliverList()),
      ],
    );
  }
}

