import 'package:flutter/material.dart';

import '../screens/splash/splash_screen.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/home/home_screen.dart';

class AppRoutes {
  AppRoutes._();



  static const String splash = '/';

  static const String onboarding = '/onboarding';

  static const String login = '/login';

  static const String register = '/register';

  static const String forgotPassword = '/forgot-password';

  static const String home = '/home';

  static const String warranties = '/warranties';

  static const String addWarranty = '/add-warranty';

  static const String editWarranty = '/edit-warranty';

  static const String warrantyDetails = '/warranty-details';

  static const String products = '/products';

  static const String productDetails = '/product-details';

  static const String receipts = '/receipts';

  static const String addReceipt = '/add-receipt';

  static const String receiptView = '/receipt-view';

  static const String categories = '/categories';

  static const String serviceCenters = '/service-centers';

  static const String serviceCenterDetails =
      '/service-center-details';

  static const String notifications = '/notifications';

  static const String search = '/search';

  static const String profile = '/profile';

  static const String editProfile = '/edit-profile';

  static const String settings = '/settings';

  // ==============================
  // Route Map
  // ==============================

  static Map<String, WidgetBuilder> routes = {
    // ==============================
    // Splash
    // ==============================

    splash: (context) => const SplashScreen(),

    // ==============================
    // Onboarding
    // ==============================

    onboarding: (context) => const OnboardingScreen(),

    // ==============================
    // Authentication
    // ==============================

    login: (context) => const LoginScreen(),

    register: (context) => const RegisterScreen(),

    forgotPassword: (context) =>
    const ForgotPasswordScreen(),

    // ==============================
    // Home
    // ==============================

    home: (context) => const HomeScreen(),

    // ==============================
    // Warranties
    // ==============================

    // warranties: (context) => const WarrantiesScreen(),

    // addWarranty: (context) => const AddWarrantyScreen(),

    // editWarranty: (context) => const EditWarrantyScreen(),

    // warrantyDetails:
    //     (context) => const WarrantyDetailsScreen(),

    // ==============================
    // Products
    // ==============================

    // products: (context) => const ProductsScreen(),

    // productDetails:
    //     (context) => const ProductDetailsScreen(),

    // ==============================
    // Receipts
    // ==============================

    // receipts: (context) => const ReceiptsScreen(),

    // addReceipt:
    //     (context) => const AddReceiptScreen(),

    // receiptView:
    //     (context) => const ReceiptViewScreen(),

    // ==============================
    // Categories
    // ==============================

    // categories:
    //     (context) => const CategoriesScreen(),

    // ==============================
    // Service Centers
    // ==============================

    // serviceCenters:
    //     (context) => const ServiceCentersScreen(),

    // serviceCenterDetails:
    //     (context) => const ServiceCenterDetailsScreen(),

    // ==============================
    // Notifications
    // ==============================

    // notifications:
    //     (context) => const NotificationsScreen(),

    // ==============================
    // Search
    // ==============================

    // search:
    //     (context) => const SearchScreen(),

    // ==============================
    // Profile
    // ==============================

    // profile:
    //     (context) => const ProfileScreen(),

    // editProfile:
    //     (context) => const EditProfileScreen(),

    // ==============================
    // Settings
    // ==============================

    // settings:
    //     (context) => const SettingsScreen(),
  };
}