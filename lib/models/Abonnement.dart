import 'package:flutter/material.dart';


import 'dart:math';


class Abonnement{
  int? id;
  DatePickerDialog? date_debut;
  DatePickerDialog? date_fin;
  String? statut;

  Abonnement({
    this.id,
    this.date_debut,
    this.date_fin,
    this.statut,
  });

  factory Abonnement.fromJson(Map<String , dynamic> json){
    return Abonnement(
      id: json["id"] ?? 0,
      date_debut: json["date_debut"] ?? "",
      date_fin: json["date_fin"] ?? "",
      statut: json["statut"] ?? ""
    );
  }

  Map<String , dynamic> toJson() => {
    "id" : id,
    "date_debut" : date_debut,
    "date_fin" : date_fin,
    "statut" : statut
  };
}
