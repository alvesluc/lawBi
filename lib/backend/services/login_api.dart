import 'package:opus/backend/models/authenticate.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

//Este é um exemplo de post que serve para fazer login

class LoginAPI {
    Future<Authenticate> login(String email, String password) async {
    // 1 - Definimos a url que será usada
    var url = 'https://dattasign.com.br/authenticate';
    // 2 - Definir o header
    var header = {"Content-type" : "application/json"};

    // 3 - Definir as informações que serão enviadas na requisição
    // Obs.: Ter muita atenção para enviar os parâmetros do jeito que são pedidos
    Map params = {
      "username" : email,
      "password" : password,
    };

    // 4 - Receber o body, que é o que será recebido na requisição
    var _body = json.encode(params);
    // 5 - Receber a response, e, sendo ela 200, prosseguir com o processo
    var response = await http.post(url, headers: header, body: _body);

    // 6 - Receber a response para poder utilizar as informações retornadas
    Map mapResponse = json.decode(response.body);
    // 7 - Instanciar uma variável para guardar o token numa variável para poder retorna-lá quando a função for chamada
    var loginToken;

    // 8 - Quando tiver
    if(response.statusCode == 200){
      loginToken = Authenticate.fromJson(mapResponse);
      //"loginToken" é um objeto "Authenticate"
      return loginToken;
    } else {
      print("Algo não correu bem.");
      return loginToken = null;
    }
  }
}
