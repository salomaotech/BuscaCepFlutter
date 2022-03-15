import "package:flutter/material.dart";

/*
Autor - @salomaotech
Descrição - Constroe o widget Image
 */

class Imagem extends StatelessWidget {
  /* construtor */
  Imagem(this._nomeImagem);

  /* nome da imagem */
  String _nomeImagem = "";

  @override
  Widget build(BuildContext context) {
    /* retorna a imagem com base no seu nome */
    return Image.asset("assets/imagens/" + _nomeImagem + ".png");
  }
}
