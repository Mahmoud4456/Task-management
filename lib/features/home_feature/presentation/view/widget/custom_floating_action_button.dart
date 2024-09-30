import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: primaryColor,
        child: const Icon(Icons.add , size: 30,),
        onPressed: (){

        },
    );
  }
}
