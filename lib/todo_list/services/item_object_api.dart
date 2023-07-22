import 'package:dio/dio.dart';
import '../model/item_object.dart';

class ItemObjectApi {
  static Future<List> getAllItemsObjects() async {
    Response response = await Dio()
        .get("https://jsonplaceholder.typicode.com/todos");
    List data = response.data.map((i) => ItemObject.fromJson(i)).toList();

    return data;
  }
}