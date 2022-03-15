import 'package:http/http.dart' as http;

import 'Cep.dart';

/*
Autor - @salomaotech
Descrição - Usa a API ViaCep para consultar um CEP
 */

class ViaCepService {
  static Future<Cep> fetchCep({required String cep}) async {
    /* resposta do HTTP */
    final response =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));

    /* valida código de status HTTP */
    if (response.statusCode == 200) {
      return Cep.fromJson(response.body);
    } else {
      throw Exception("Falha!");
    }
  }
}
