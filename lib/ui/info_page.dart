import 'package:file_picker_example/view_models/api_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<ApiViewModel>(
          builder: (context, value, child) {
            if(value.uiError.isNotEmpty){
              return Text(value.uiError);
            }
            if(value.informartions!=null){
              return Text(value.informartions![0].code);
            }else{
              print(value.informartions);
              context.read<ApiViewModel>().getInfo();
            }
            return Text("Hello");

          },
        ),
      ),
    );
  }
}
