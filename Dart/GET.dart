import 'dart:convert' as convert;

import 'dart:io';

import 'package:http/http.dart' as http;

void main() async {
  print("Digite o id da avaliação que deseja consultar (Digite 0 para ver todas as avaliações):");
  var pedido = stdin.readLineSync();
  var url = Uri.https('localhost:5001', '/Avaliacao/Visualizar/' + pedido);
  var urlnulo = Uri.https('localhost:5001', '/Avaliacao/Listar');
  if (pedido == "0"){
    var response = await http.get(urlnulo);
    if(response.statusCode == 200){
      print('Avaliações cadastradas: ${response.body}');
    }
    else{
      print('Erro na requisição, status: ${response.statusCode}');
    }
  }
  else{
    var response = await http.get(url);
    if(response.statusCode == 200){
      print('Avaliação do Id pedido: ${response.body}');
    }
    else{
      print('Erro na requisição, status: ${response.statusCode}');
    }
  }

}

