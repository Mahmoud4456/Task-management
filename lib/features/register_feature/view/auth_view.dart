import 'package:flutter/material.dart';
import 'package:task_manager/features/register_feature/view/register_view.dart';

import '../../../core/utils/colors.dart';

// class LoginView extends StatelessWidget {
//   const LoginView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  DefaultTabController(
//       length: 2,
//       child:  Scaffold(
//         backgroundColor: Colors.white.withOpacity(.75),
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 1,
//           title: const Text("Task Manager" , style: TextStyle( fontSize: 32 , fontWeight: FontWeight.bold , color: Colors.blue),),
//           bottom: TabBar(
//             indicatorSize: TabBarIndicatorSize.tab,
//             unselectedLabelColor: Colors.grey,
//             labelColor: Colors.black,
//             padding: const EdgeInsets.all(10),
//             dividerHeight: 0,
//             indicator: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(14),
//             ),
//
//             tabs: const [
//               Tab(text: "Login",),
//               Tab(text: "Register",),
//             ],
//           ),
//         ),
//         body: Container(
//           padding: EdgeInsets.symmetric(horizontal:30 ,vertical: 100),
//           alignment: Alignment.center,
//           child: const TabBarView(
//               children: [
//             LoginViewBody(),
//             RegisterView(),
//           ]
//           ),
//         ),
//       ),
//     );
//   }
// }

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
           isSelected == true ? const LoginViewBody() : const RegisterView(),
         ] ,
        ),
      ) ,
    );
  }
}



class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        height:350 ,
        width:double.infinity ,
      ),
    );
  }
}
