import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_arrival_inform/ui/main_screen.dart';
import 'package:subway_arrival_inform/ui/main_view_model.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => MainViewModel(),
          ),
        ],
        child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (BuildContext context) => MainViewModel(),
          child: const MainScreen(),
        )
    );
  }
}
