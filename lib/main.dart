import 'package:flutter/material.dart';
import 'package:latihan_state_management/provider/done_module_provider.dart';
import 'package:latihan_state_management/screen/module_page_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return DoneModuleProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Latihan state management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ModulePage(),
      ),
    );
  }
}
