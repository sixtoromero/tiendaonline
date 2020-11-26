import 'package:flutter/material.dart';
import 'package:myonlinestore/domain/entities/mitiendaonline.dart';
import 'package:myonlinestore/presentation/widgets/listviewstore.dart';
import 'package:myonlinestore/repostories/myonlinestore_repository.dart';

class StorePage extends StatelessWidget {
  //const StorePage({Key key}) : super(key: key);

  MyOnlineStoreRepository storeRepository = MyOnlineStoreRepository();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Mi Tienda Online'),),
        backgroundColor: Colors.blue,
        body: FutureBuilder(
          future: storeRepository.getListStore(),
          builder: (BuildContext context, AsyncSnapshot<List<MiTiendaOnline>> snapshot){
            if (snapshot.hasData) {

            final items = snapshot.data;
            
            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (countext, i) => ListViewStorePage(model: items[i]),
            );
            } else {
              return Center(child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),);
            }
          },
        ),
      ),
    );
  }
}