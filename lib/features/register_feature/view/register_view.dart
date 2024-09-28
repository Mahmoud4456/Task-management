import 'package:flutter/material.dart';
import 'package:task_manager/features/register_feature/view/widget/custom_field.dart';

import '../../../core/utils/colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          height:350 ,
          width:double.infinity ,
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                 SizedBox(height: 20,),
                 Text("Login", style: TextStyle(color: primaryTextColor , fontSize: 22 , fontWeight: FontWeight.bold),),
                 SizedBox(height: 20,),
                CustomField( icon: Icons.home_outlined, hint: "Email",),
                SizedBox(height: 30,),
                CustomField( icon: Icons.lock_outline, hint: "Password",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

