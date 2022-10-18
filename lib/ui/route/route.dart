import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/sign_in.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';
import 'package:shelter/ui/views/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_add.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_favourite.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_home.dart';
import 'package:shelter/ui/views/drawer_pages/faq.dart';
import 'package:shelter/ui/views/drawer_pages/how_to_use.dart';
import 'package:shelter/ui/views/drawer_pages/privacy.dart';
import 'package:shelter/ui/views/drawer_pages/settings.dart';
import 'package:shelter/ui/views/drawer_pages/support.dart';
import 'package:shelter/ui/views/main_home_screen.dart';
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
const String mainHomeScreen = '/main-home-screen';
const String supportScreen = '/support-screen';
const String privacyScreen = '/privacy-screen';
const String faqtScreen = '/faq-screen';
const String howToUseScreen = '/how-to-use-screen';
const String settingsScreen = '/settings-screen';
const String navHomeScreen = '/nav-home-screen';
const String navAddScreen = '/nav-add-screen';
const String navFabouriteScreen = '/nav-fabourite-screen';

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
    name: mainHomeScreen,
    page: () => MainHomeScreen(),
  ),
  GetPage(
    name: supportScreen,
    page: () => Support(),
  ),
  GetPage(
    name: privacyScreen,
    page: () => Privacy(),
  ),
  GetPage(
    name: faqtScreen,
    page: () => FAQ(),
  ),
  GetPage(
    name: howToUseScreen,
    page: () => HowToUse(),
  ),
  GetPage(
    name: settingsScreen,
    page: () => Settings(),
  ),
  GetPage(
    name: navHomeScreen,
    page: () => NavHome(),
  ),
  GetPage(
    name: navAddScreen,
    page: () => NavAdd(),
  ),
  GetPage(
    name: navFabouriteScreen,
    page: () => NavFavourite(),
  ),
];
