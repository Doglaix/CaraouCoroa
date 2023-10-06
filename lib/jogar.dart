import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Jogar extends StatefulWidget {
  String valor;
  Jogar(this.valor);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if(widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }
    else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body:Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("imagens/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ]
        )
      ),
    );
  }
}