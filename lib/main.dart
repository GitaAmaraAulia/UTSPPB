import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/grid_page.dart';
import 'screens/detail_page.dart';
import 'models/tas_model.dart';

void main() {
  runApp(const KatalogTasApp());
}

class KatalogTasApp extends StatelessWidget {
  const KatalogTasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Tas Stylish',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF6F9),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF44414B)),
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        GridPage.routeName: (context) => const GridPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == DetailPage.routeName) {
          final args = settings.arguments as TasModel;
          return MaterialPageRoute(
            builder: (context) => DetailPage(tas: args),
          );
        }
        return null;
      },
    );
  }
}
