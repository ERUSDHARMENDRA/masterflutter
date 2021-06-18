import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masterflutter/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'screens/products.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProductProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: Products(),
    );
  }
}
