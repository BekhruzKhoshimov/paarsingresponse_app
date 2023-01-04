import 'dart:convert';

import 'package:http/http.dart';
import 'package:paarsingresponse_app/pages/model/request_model.dart';

class Network {
  static String BASE = "dummy.restapiexample.com";

  //http apis
  static String API_EMPLOYES = "/api/v1/employees";
  static String API_EMPLOYE = "/api/v1/employee"; //id

//http
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params);
    var response = await get(uri);
    if (response.statusCode == 200){
      return response.body;
    }
    return null;
  }

  // http params
  static Map<String, String> paramsEmpty(){
    return {};
  }

  //http parsing
  static parsingEmpList(String body) {
    dynamic json = jsonDecode(body);
    var data = EmpList.fromJson(json);
    return data;
  }


}