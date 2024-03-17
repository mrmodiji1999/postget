// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<PostDataUiModel> welcomeFromJson(String str) => List<PostDataUiModel>.from(json.decode(str).map((x) => PostDataUiModel.fromJson(x)));

String welcomeToJson(List<PostDataUiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostDataUiModel {
    String firstName;
    String lastName;
    int age;
    String id;
    String address;
    String phoneNumbers;

    PostDataUiModel({
        required this.firstName,
        required this.lastName,
        required this.age,
        required this.id,
        required this.address,
        required this.phoneNumbers,
    });

    factory PostDataUiModel.fromJson(Map<String, dynamic> json) => PostDataUiModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        age: json["age"],
        id: json["id"],
        address: json["address"],
        phoneNumbers: json["phoneNumbers"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "age": age,
        "id": id,
        "address": address,
        "phoneNumbers": phoneNumbers,
    };
}
