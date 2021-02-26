import 'dart:convert';

import 'package:getx_testing/repository/mapa_comunicados.dart';
import 'package:http/http.dart' as http;

class ComunicadosRepository {
  static Future<List<DadosComunicados>> getComunicados() async {
    var response = await http.get(
      "https://www.condosocio.com.br/flutter/comunicados.php?idUsu=4500",
    );
    Iterable lista = json.decode(response.body);

    return lista.map((model) => DadosComunicados.fromJson(model)).toList();
  }
}
