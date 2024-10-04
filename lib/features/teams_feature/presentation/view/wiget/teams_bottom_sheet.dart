import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors.dart';

import 'custom_text_form_field.dart';

class TeamsBottomSheet extends StatelessWidget {
  const TeamsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Team Name " ,
            style: TextStyle(
             fontSize: 19,
             color: primaryColor,
            ),
          ),
         const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.people_outline , size: 35, color: primaryColor,),
              SizedBox(width: 12,),
              Expanded(child: CustomTextFormField( text: "Enter Your Team Name",),),
            ],
          ),
          const SizedBox(height: 15,),
          const Text("Task description " ,
            style: TextStyle(
              fontSize: 19,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.format_align_left , size: 35, color: primaryColor,),
              SizedBox(width: 12,),
              Expanded(child: CustomTextFormField( text: "Enter Your Team Name",),),
            ],
          ),
         const SizedBox(height: 60,),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                height: 40,
                child: const Text("Add" , style: TextStyle(fontSize: 20, color: Colors.white),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

