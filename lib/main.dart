import 'package:flutter/material.dart';
import 'package:login/Pages/check_auth_screen.dart';
import 'package:login/Pages/home_screen.dart';
import 'package:login/Pages/login_screen.dart';
import 'package:login/Pages/register_screen.dart';
import 'package:login/services/auth_services.dart';
import 'package:login/services/notifications_services.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IQ-Switch App',
      initialRoute: 'checking',
      routes: {
        'login': (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),
        'home': (_) => HomeScreen(),
        'checking': (_) => CheckAuthScreen()
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      /*theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.grey[800],
            appBarTheme:
                const AppBarTheme(elevation: 0, color: Colors.redAccent),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.redAccent, elevation: 0))*/
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 216, 115, 149),
          appBarTheme: const AppBarTheme(elevation: 0, color: Colors.redAccent),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.redAccent, elevation: 0)),
    );
  }
}
