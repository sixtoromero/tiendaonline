import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myonlinestore/domain/entities/mitiendaonline.dart';
import 'package:myonlinestore/managers/http_manager.dart';

class MyOnlineStoreApi {
  final HttpManager httpManager = HttpManager();

  Future<List<MiTiendaOnline>> getListStore() async {
    dynamic resp = await httpManager.get('');
    final Map<String, dynamic> decodedData = json.decode(resp.body);
    //print(decodedData);
    final List<MiTiendaOnline> listStore = new List();
    if (decodedData == null) return [];

    dynamic result = decodedData['data'];
    print(result["Items"]);
    result["Items"].forEach((value) {
      final itemTemp = MiTiendaOnline.fromJson(value);
      listStore.add(itemTemp);
    });

    // print(characters);

    return listStore;


  }
  
}