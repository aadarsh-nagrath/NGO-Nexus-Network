import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/firebase_options.dart';
import 'package:vyasa/src/features/authentication/screens/splash_screen/splash_screen.dart';
// import 'package:vyasa/src/features/core/screens/dashboard/dashboard.dart';
import 'package:vyasa/src/util/theme/theme.dart';

import 'src/repository/authentication_repository/auth_repo.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

// const MainScreen()
//