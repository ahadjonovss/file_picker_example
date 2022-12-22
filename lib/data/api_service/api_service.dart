import 'package:dio/dio.dart';
import 'package:file_picker_example/data/models/just_model.dart';

import '../models/my_response.dart';
import 'api_client.dart';


class ApiService extends ApiClient {

  Future<MyResponse> getInfo() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get("https://dynamic-view-api.free.mockoapp.net/dynamic");
      if (response.statusCode == 200) {
        // print(response.data["fields"]);
        myResponse.data=(response.data["fields"] as List)
            .map((e) => JustModel.fromJson(e))
            .toList();
      }
    } catch (err) {
      myResponse.error=err.toString();
    }
    return myResponse;
  }


}