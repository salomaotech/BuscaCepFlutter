import "package:flutter/material.dart";

/*
Autor - @salomaotech
Descrição - Separador de widget usando o widget SizeBox
 */

class EspacoEntreElemento extends StatelessWidget {
  /* construtor */
  EspacoEntreElemento(this._largura, this._altura);

  /* largura e altura */
  double _largura = 0;
  double _altura = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _largura,
      height: _altura,
    );
  }
}
