import 'package:flutter/material.dart';

import 'constants/app_strings.dart';
import 'routes/routes.dart';
import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const WarrantyVaultApp());
}

class WarrantyVaultApp extends StatelessWidget {
  const WarrantyVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,

      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,



      initialRoute: AppRoutes.splash,

      routes: AppRoutes.routes,
    );
  }
}