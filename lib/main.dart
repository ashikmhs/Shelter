// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  //Create the initialization Future outside of build
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    name: 'shelter',
    options: FirebaseOptions(
        apiKey: 'AIzaSyB4FsVzPe5GgJX6g7-3wi4E7vUrfbaeuuw',
        appId: '1:702680342330:android:2834f3cdd2e605ac2e7a03',
        messagingSenderId: '702680342330',
        projectId: 'shelter-6a14c'),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //Initialize FlutteFire
      future: _initialization,
      builder: (context, snapshot) {
        //check for erros
        if (snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        //once complete , show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        //otherwise, show something while waiting for initialization to complete
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply(),
              ),
              scaffoldBackgroundColor: AppColors.scaffoldColor),
          initialRoute: splash,
          getPages: getPages,
          home: SplashScreen(),
        );
      },
    );
  }
}
