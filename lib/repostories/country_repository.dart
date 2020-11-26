import 'package:myonlinestore/data/remote/country_api.dart';
import 'package:myonlinestore/domain/entities/country.dart';

class CountryRepository {
  Future<List<Country>> getListStore() async {
    CountryApi api = CountryApi();
    return await api.getlistCountry();
  }
}