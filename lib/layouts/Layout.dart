import "package:flutter/material.dart";

import "CorpoDoLayout.dart";

/*
Autor - @salomaotech
Descrição - Layout básico utilizando a widtget MaterialApp
 */

class Layout extends StatelessWidget {
  /* propriedades */
  String _tituloDoAPlicativo;

  /* construtor */
  Layout(this._tituloDoAPlicativo);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _tituloDoAPlicativo,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CorpoDoLayout(_tituloDoAPlicativo),
    );
  }
}
