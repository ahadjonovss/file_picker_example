import 'package:file_picker_example/data/repositories/api_repository.dart';
import 'package:file_picker_example/ui/file_picker.dart';
import 'package:file_picker_example/ui/info_page.dart';
import 'package:file_picker_example/ui/main_page.dart';
import 'package:file_picker_example/view_models/api_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>ApiViewModel(apiRepository: ApiRepository()))
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
