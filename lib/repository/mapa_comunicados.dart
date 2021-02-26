// To parse this JSON data, do
//
//     final dadosComunicados = dadosComunicadosFromJson(jsonString);

import 'dart:convert';

DadosComunicados dadosComunicadosFromJson(String str) =>
    DadosComunicados.fromJson(json.decode(str));

String dadosComunicadosToJson(DadosComunicados data) =>
    json.encode(data.toJson());

class DadosComunicados {
  DadosComunicados({
    this.titulo,
    this.texto,
    this.dia,
    this.mes,
    this.hora,
  });

  String titulo;
  String texto;
  String dia;
  String mes;
  String hora;

  factory DadosComunicados.fromJson(Map<String, dynamic> json) =>
      DadosComunicados(
        titulo: json["titulo"],
        texto: json["texto"],
        dia: json["dia"],
        mes: json["mes"],
        hora: json["hora"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "texto": texto,
        "dia": dia,
        "mes": mes,
        "hora": hora,
      };
}
