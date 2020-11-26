import 'dart:convert';
import 'package:myonlinestore/domain/entities/country.dart';
import 'package:myonlinestore/managers/http_manager.dart';

class CountryApi {
  final HttpManager httpManager = HttpManager();

  Future<List<Country>> getlistCountry() async {
    dynamic resp = await httpManager.get('country');
    final Map<String, dynamic> decodedData = json.decode(resp.body);
    //print(decodedData);
    final List<Country> listCountry = new List();
    if (decodedData == null) return [];

    dynamic result = decodedData['data'];

    result["Items"].forEach((value) {
      final itemTemp = Country.fromJson(value);
      listCountry.add(itemTemp);
    });

    // print(characters);

    return listCountry;


  }
  
}