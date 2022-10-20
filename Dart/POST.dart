import 'dart:io';

import 'dart:convert';

import 'package:http/http.dart' as http;


void main() async {
 
  print("Digite uma nota para a aula (1 a 5):");
  var nota = stdin.readLineSync();

  print("Digite um comentario sobre a aula caso queira:");
  var comentario = stdin.readLineSync();



  Map data = {
    'Comentario': '$comentario',
    'Avaliacao1':'$nota'
  };



  var body = jsonEncode(data);

  var url = Uri.https('localhost:5001', '/Avaliacao/Enviar');
  var response = await http.post(url, headers: {"Content-Type": "application/json; charset=utf-8"}, body: body);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');


}