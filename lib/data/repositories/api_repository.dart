import 'package:file_picker_example/data/api_service/api_service.dart';
import 'package:file_picker_example/data/models/my_response.dart';

class ApiRepository{

 getInfo()=>ApiService().getInfo();

}