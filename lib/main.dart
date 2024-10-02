import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_manager/features/teams_feature/presentation/view/teams_view.dart';
import 'features/home_feature/presentation/view/home_view.dart';
import 'features/register_feature/presentation/view/auth_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAKyYrHPE8VGzOinJPF11tLqWQ28H2SidM",
        appId: "1:50166147180:android:42525cdede07a85ef99049",
        messagingSenderId: "50166147180" ,
        projectId: "task-manager-85281"
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
      ),
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: const TeamsView(),
    );
  }
}


