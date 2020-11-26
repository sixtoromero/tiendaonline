// To parse this JSON data, do
//
//     final miTiendaOnline = miTiendaOnlineFromJson(jsonString);

import 'dart:convert';

MiTiendaOnline miTiendaOnlineFromJson(String str) => MiTiendaOnline.fromJson(json.decode(str));

String miTiendaOnlineToJson(MiTiendaOnline data) => json.encode(data.toJson());

class MiTiendaOnline {
    MiTiendaOnline({
        this.id,
        this.barCode,
        this.descripcion,
        this.marca,
        this.precio,
        this.nameProduct,
        this.urlImage,
    });

    int id;
    String barCode;
    String descripcion;
    String marca;
    double precio;
    String nameProduct;
    String urlImage;

    factory MiTiendaOnline.fromJson(Map<String, dynamic> json) => MiTiendaOnline(
        id: json["ID"],
        barCode: json["BarCode"],
        descripcion: json["Descripcion"],
        marca: json["Marca"],
        precio: json["Precio"].toDouble(),
        nameProduct: json["nameProduct"],
        urlImage: json["urlImage"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "BarCode": barCode,
        "Descripcion": descripcion,
        "Marca": marca,
        "Precio": precio,
        "nameProduct": nameProduct,
        "urlImage": urlImage,
    };
}
