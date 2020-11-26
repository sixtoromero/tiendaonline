import 'package:myonlinestore/data/remote/myonlinestore_api.dart';
import 'package:myonlinestore/domain/entities/mitiendaonline.dart';

class MyOnlineStoreRepository {
  Future<List<MiTiendaOnline>> getListStore() async {
    MyOnlineStoreApi api = MyOnlineStoreApi();
    return await api.getListStore();
  }
}