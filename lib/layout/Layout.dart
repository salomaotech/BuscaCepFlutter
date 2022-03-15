import "package:flutter/material.dart";

/*
Autor - @salomaotech
Descrição - Layout básico utilizando a widget MaterialApp com a widget Scaffold
 */

class Layout extends StatelessWidget {
  /* propriedades */
  String _tituloDoAPlicativo;

  /* widgets */
  Widget _viewHome;

  /* construtor */
  Layout(this._tituloDoAPlicativo, this._viewHome);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _tituloDoAPlicativo,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_tituloDoAPlicativo),
        ),
        body: _viewHome,
      ),
    );
  }
}
