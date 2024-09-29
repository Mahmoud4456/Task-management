import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.list_outlined)),
      title: const Text("Task Manager" , style: TextStyle( color: primaryColor , fontSize: 22 ,), ) ,
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.person_outline)),
      ],
    );
  }
}
