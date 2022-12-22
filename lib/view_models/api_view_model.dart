import 'package:file_picker_example/data/models/just_model.dart';
import 'package:file_picker_example/data/models/my_response.dart';
import 'package:flutter/cupertino.dart';

import '../data/repositories/api_repository.dart';

class ApiViewModel extends ChangeNotifier{
  ApiRepository apiRepository;
  ApiViewModel({required this.apiRepository}){
    getInfo();
  }

  List<JustModel>? informartions;
  String uiError='';

  getInfo() async {
    MyResponse myResponse = await apiRepository.getInfo();
    print("Error");
    print(myResponse.error);

    if(myResponse.error.isEmpty){
      informartions=myResponse.data;
    }
    else{
      uiError=myResponse.error;
    }
    notifyListeners();


  }
}