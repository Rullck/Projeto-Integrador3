import 'dart:io';

import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {

  print("Digite o id da avaliação que deseja deletar:");
  var pedido = stdin.readLineSync();
  


  var url = Uri.https('localhost:5001', '/Avaliacao/Excluir/' + pedido);
  var response = await http.delete(url);

  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  
}