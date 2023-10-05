import 'package:easy_pay_new/pages/home_page.dart';
import 'package:easy_pay_new/pages/login_page.dart';
import 'package:easy_pay_new/pages/register_page.dart';
import 'package:easy_pay_new/pages/transactions_page.dart';
import 'package:easy_pay_new/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'onboarding_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF161622),
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>NavigationProvider(),
      child: MaterialApp(
        title: 'Easy Pay',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
        darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
        home: const OnboardingScreen(),
        routes: {
          '/homepage': (context) => const HomePage(),
          '/loginpage': (context) => const LoginPage(),
          '/registerpage': (context) => const RegisterPage(),
          '/transactionspage': (context) => const TransactionsPage(),
        },
      ),
    );
  }
}
