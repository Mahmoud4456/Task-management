import 'package:flutter/material.dart';
import 'package:task_manager/features/register_feature/presentation/view/register_view.dart';
import '../../../../core/utils/colors.dart';
import 'login_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool isSelected = true ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:40 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text("Task Manager" , style: TextStyle(color: primaryColor  , fontSize: 32 , fontWeight: FontWeight.bold),),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               GestureDetector(
                 onTap: (){
                   isSelected = ( isSelected == true) ? false : true ;
                 setState(() {});
                   },
                 child: Container(
                   padding: const EdgeInsets.symmetric(vertical: 7 , horizontal: 40),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: isSelected == true ? Colors.white : Colors.grey[100],
                   ),
                   child:  Text("Login", style: TextStyle(color: isSelected ? primaryTextColor  : Colors.grey  , fontSize: 20),),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   isSelected =  (isSelected == true) ? false : true ;
                   setState(() {});
                 },
                 child: Container(
                   padding: const EdgeInsets.symmetric(vertical: 7 , horizontal: 30),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: isSelected == true ?  Colors.grey[100] : Colors.white,
                   ),
                   child: Text("Register", style: TextStyle(color: isSelected ? Colors.grey  :  primaryTextColor , fontSize: 20),),
                 ),
               ),
             ],
           ),
           const SizedBox(height: 12,),
           isSelected == true ? const LoginView() : const RegisterView(),
         ] ,
        ),
      ) ,
    );
  }
}



