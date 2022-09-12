import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/sign_in.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';
import 'package:shelter/ui/views/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:shelter/ui/views/onboarding_screens.dart';
import 'package:shelter/ui/views/privacy-policy.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:shelter/ui/views/user_form.dart';


const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String signIn = '/sign-in-screen';
const String userForm = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String bottomNavController = '/bottom-nav-controller';

//control our page route flow
List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnBoardingScreen(),
  ),
  GetPage(
    name: signUp,
    page: () => SignUp(),
  ),
  GetPage(
    name: signIn,
    page: () => SignIn(),
  ),
  GetPage(
    name: userForm,
    page: () => UserForm(),
  ),
   GetPage(
    name: privacyPolicy,
    page: () => PrivacyPolicy(),
  ),
  GetPage(
    name: bottomNavController,
    page: () => BottomNavController(),
  ),
];
