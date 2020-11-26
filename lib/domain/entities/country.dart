// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

Country countryFromJson(String str) => Country.fromJson(json.decode(str));

String countryToJson(Country data) => json.encode(data.toJson());

class Country {
    Country({
        this.id,
        this.code,
        this.urlImage,
        this.symbol,
        this.name,
    });

    int id;
    String code;
    String urlImage;
    String symbol;
    String name;

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["ID"],
        code: json["Code"],
        urlImage: json["UrlImage"],
        symbol: json["Symbol"],
        name: json["Name"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "Code": code,
        "UrlImage": urlImage,
        "Symbol": symbol,
        "Name": name,
    };
}
