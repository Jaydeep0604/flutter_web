import 'package:flutter/foundation.dart';
import 'package:flutter_web/navigator/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    runApp(
      MyApp(),
    );
  }

  setPathUrlStrategy();
  Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  RouteSettings? settings;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeScreen(),
      initialRoute: '/home',
      onGenerateRoute: AppRoutes.generateGlobalRoute,
      // routes: {
      //   '/home': (context) => HomeScreen(),
      //   '/home/services-detail-screen': (context) => ServicesDetailScreen(),
      // },
    );
  }
}
