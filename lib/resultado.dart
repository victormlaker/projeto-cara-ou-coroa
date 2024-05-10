import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String resultado;
  Resultado(this.resultado);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.resultado == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd96),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(caminhoImagem),
          GestureDetector(
            child: Image.asset("images/botao_voltar.png"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
