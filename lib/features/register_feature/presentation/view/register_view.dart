import 'package:flutter/material.dart';
import 'package:task_manager/features/register_feature/presentation/view/widget/custom_field.dart';

import '../../../../core/utils/colors.dart';


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
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                 const SizedBox(height: 20,),
                 const Text("Register", style: TextStyle(color: primaryTextColor , fontSize: 22 , fontWeight: FontWeight.bold),),
                 const SizedBox(height: 30,),
                const CustomField( icon: Icons.home_outlined, label: "Email",),
                const SizedBox(height: 10,),
                const CustomField( icon: Icons.lock_outline, label: "Password",),
                const SizedBox(height: 10,),
                const CustomField( icon: Icons.lock_outline, label: "Conform Password",),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical:8 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12) ,
                    color: Colors.black ,
                  ),
                  child: const Text("Register" , style: TextStyle( fontSize: 22  , fontWeight: FontWeight.w400 , color: Colors.white),) ,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

