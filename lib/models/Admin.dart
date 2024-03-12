import 'package:flutter/material.dart';


import 'dart:math';


class Admin{
  int? id;
  String? prenom;
  String? nom;
  int? telephone;
  String? email;
  String? password;
  int? code;

  Admin({
    this.id,
    this.prenom,
    this.nom,
    this.telephone,
    this.email,
    this.password,
    this.code
  });

  factory Admin.fromJson(Map<String , dynamic> json){
    return Admin(
        id: json["id"] ?? 0,
        prenom: json["prenom"] ?? "",
        nom: json["nom"] ?? "",
        telephone:  json["telephone"] ?? 0,
        email: json["email"] ?? "",
        password: json["password"] ?? "",
        code: json["code"] ?? 0,
    );
  }

  Map<String , dynamic> toJson() => {
    "id" : id,
    "prenom" : prenom,
    "nom" : nom,
    "telephone" : telephone,
    "email" : email,
    "password" : password,
    "code" : code
  };

}
