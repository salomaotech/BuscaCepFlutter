import 'package:busca_cep/widgets/CampoEntrada.dart';
import 'package:busca_cep/widgets/EspacoEntreElemento.dart';
import 'package:busca_cep/widgets/Imagem.dart';
import "package:flutter/material.dart";

import '../modelo/ViaCepService.dart';

/*
Autor - @salomaotech
Descrição - Conteúdo do corpo do layout usando o widget StatefulWidget
 */

class ViewHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    /* EstadoWidget */
    return EstadoWidget();
  }
}

/*
Implementação dos Widgets de estado mutável
 */
class EstadoWidget extends State<ViewHome> {
  /* objetos */
  Text _campoSaida = new Text("");
  CampoEntrada _campoEntradaCep = new CampoEntrada("CEP", 22.0);

/* pesquisa por cep */
  Future _pesquisar() async {
    /* excessão */
    try {
      /* resultado da pesquisa */
      final resultadosCep =
          await ViaCepService.fetchCep(cep: _campoEntradaCep.controller.text);

      /* resultado */
      String resultado = "";
      resultado += "Cep: " + resultadosCep.cep + "\n";
      resultado += "Logradouro: " + resultadosCep.logradouro + "\n";
      resultado += "Complemento: " + resultadosCep.complemento + "\n";
      resultado += "Bairro: " + resultadosCep.bairro + "\n";
      resultado += "Localidade: " + resultadosCep.localidade + "\n";
      resultado += "UF: " + resultadosCep.uf + "\n";
      resultado += "Ibge: " + resultadosCep.ibge + "\n";
      resultado += "Gia: " + resultadosCep.gia + "\n";

      /* atualiza o stado quando terminar de pegar os dados */
      setState(() {
        /* objeto de campo de saida Text */
        _campoSaida = new Text(
          resultado,
          style: TextStyle(fontSize: 22.0),
        );
      });
    } catch (_) {
      /* atualiza o stado quando terminar de pegar os dados */
      setState(() {
        /* objeto de campo de saida Text */
        _campoSaida = new Text(
          "Ops!",
          style: TextStyle(fontSize: 22.0),
        );
      });
    }
  }

  /* limpa a tela */
  void _limpar() {
    /* altera o estado */
    setState(() {
      _campoSaida = new Text("");
      _campoEntradaCep.controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Imagem("logo_1"),
        EspacoEntreElemento(0, 10),
        _campoEntradaCep,
        EspacoEntreElemento(0, 10),
        TextButton(
          child: Text(
            "Pesquisar",
            style: TextStyle(fontSize: 22.0),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            primary: Colors.black,
            padding: EdgeInsets.all(10.0),
          ),
          onPressed: () {
            _pesquisar();
          },
        ),
        EspacoEntreElemento(0, 10),
        TextButton(
          child: Text(
            "Limpar",
            style: TextStyle(fontSize: 22.0),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            primary: Colors.black,
            padding: EdgeInsets.all(10.0),
          ),
          onPressed: () {
            _limpar();
          },
        ),
        EspacoEntreElemento(0, 20),
        _campoSaida,
      ],
    );
  }
}
