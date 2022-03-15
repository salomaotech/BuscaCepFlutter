import "package:flutter/material.dart";

/*
Autor - @salomaotech
Descrição - Corpo do aplicativo usando o widget de layout Scaffold
 */

class CorpoDoLayout extends StatelessWidget {
  /* propriedades */
  String _tituloDoAPlicativo = "";

  /* construtor */
  CorpoDoLayout(this._tituloDoAPlicativo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloDoAPlicativo),
      ),
      body: Text("......"),
    );
  }
}
