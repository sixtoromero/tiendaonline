import 'package:flutter/material.dart';
import 'package:myonlinestore/domain/entities/country.dart';


class ListViewCountryPage extends StatefulWidget {
  final Country model;
  ListViewCountryPage({@required  this.model});

  @override
  _ListViewCountryPageState createState() => _ListViewCountryPageState();
}

class _ListViewCountryPageState extends State<ListViewCountryPage> {    

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 2.0),
        child: Stack(
          children: [
            _cardItem(),            
          ],
        ),
      );
    }

    Widget _cardItem() {
      
      double width = MediaQuery.of(context).size.width * 0.6;

      return Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0) ),
        child: Row(
          children: [
            Container(
              width: 95,
              height: 90,
              child: FadeInImage(                    
                placeholder: AssetImage('assets/loading.gif'),                                     
                image: NetworkImage(widget.model.urlImage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(                    
                    widget.model.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),                    
                  Container(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [                          
                        Text(
                          widget.model.code,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold,),
                        ),                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      );
    }
}