import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors.dart';
import 'package:task_manager/features/teams_feature/presentation/view/wiget/search_bar.dart';
import 'package:task_manager/features/teams_feature/presentation/view/wiget/teams_bottom_sheet.dart';

class TeamsViewBody extends StatelessWidget {
  const TeamsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const CustomSearchBar(),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            onPressed: () {
              showBottomSheet(context: context ,
                sheetAnimationStyle: AnimationStyle(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.bounceInOut,
                ),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.greenAccent,
                  builder: (context) {
                return const TeamsBottomSheet() ;
              },
              );
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Text(
              "Add Team",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
         const SizedBox(height: 30,),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 8 ,vertical: 16),
           decoration: BoxDecoration(
             color: Colors.cyanAccent ,
             borderRadius: BorderRadius.circular(12),
           ),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Team 1" , style: TextStyle(
                  fontSize: 22,
                ),
                ),
                const SizedBox(width: 5,),
                const Text("(Member 3)" , style: TextStyle(
                  fontSize: 18,
                  color: grey
                ),
                ),
                const Spacer(),
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.settings),
                ),
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.delete_outline_rounded),
                ),
              ],
            ),
         ),
        ],
      ),
    );
  }
}
