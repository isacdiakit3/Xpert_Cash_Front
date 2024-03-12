import 'package:flutter/material.dart';


import 'dart:math';


class Banque{
  int? id;
  String? nom;
  int? numero_paiement;
  int? numero_depense;
  int? montant;

  Banque({
    this.id,
    this.nom,
    this.numero_paiement,
    this.numero_depense,
    this.montant
  });

  factory Banque.fromJson(Map<String , dynamic> json){
    return Banque(
      id: json["id"] ?? 0,
      nom: json["nom"] ?? "",
      numero_paiement:  json["numero_paiement"] ?? 0,
      numero_depense: json["numero_depense"] ?? 0,
      montant: json["montant"] ?? "",
    );
  }

  Map<String , dynamic> toJson() => {
    "id" : id,
    "nom" : nom,
    "numero_paiement" : numero_paiement,
    "numero_depense" : numero_depense,
    "montant" : montant
  };
}
