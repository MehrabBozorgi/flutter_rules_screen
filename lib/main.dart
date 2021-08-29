import 'package:flutter/material.dart';
import 'package:flutter_read_rules/User.dart';
import 'package:flutter_read_rules/add_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),

      ],
      child: MaterialApp(

          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: AddScreen(),
          ),

        ),

    );
  }
}
