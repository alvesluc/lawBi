import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:opus/backend/models/importaNotas.dart';

//Este é um exemplo de post que serve para fazer login

class ContactInfoAPI {
    Future<ImportaNotas> getContactData(String usuario, String senha) async {
    // 1 - Definimos a url que será usada
    var url = 'https://www.sijur.com.br/api/importaNotas/json?usuario=$usuario&senha=$senha';
    // 2 - Definir o header
   
    //var header = {"Authorization" : "Bearer $_token"};

    // 5 - Receber a response, e, sendo ela 200, prosseguir com o processo
    var response = await http.get(url, /*headers: header*/);

    // 6 - Receber a response para poder utilizar as informações retornadas
    Map mapResponse = json.decode(response.body);

    // 7 - Guardar o token numa variável para poder retorna-lá quando a função for chamada
    var contactInfo;

    // 8 - Quando tiver
    if(response.statusCode == 200){
      contactInfo = ImportaNotas.fromJson(mapResponse);
      //"contactInfo" é um objeto "ContactsInfo", a partir dele, teremos acesso aos objetos "filhos"
      return contactInfo;
    } else {
      print("Algo não correu bem.");
      return contactInfo = null;
    }
  }
}
