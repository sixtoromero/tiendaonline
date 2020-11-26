import 'package:flutter/material.dart';
import 'package:myonlinestore/domain/entities/country.dart';
import 'package:myonlinestore/presentation/widgets/listviewcountry.dart';
import 'package:myonlinestore/repostories/country_repository.dart';
import 'package:myonlinestore/repostories/myonlinestore_repository.dart';

class CountryPage extends StatelessWidget {
  //const CountryPage({Key key}) : super(key: key);

  CountryRepository repository = CountryRepository();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Paises Latinoamerícanos'),),
        backgroundColor: Colors.blue,
        body: FutureBuilder(
          future: repository.getListStore(),
          builder: (BuildContext context, AsyncSnapshot<List<Country>> snapshot){
            if (snapshot.hasData) {

            final items = snapshot.data;
            
            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (countext, i) => ListViewCountryPage(model: items[i]),
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