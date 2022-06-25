import 'dart:convert';

import 'package:consumindo_api_com_flutter/model/user_model.dart';
import 'package:consumindo_api_com_flutter/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response =
        await http.get('https://sujeitoprogramador.com/r-api/?api=filmes');
    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);
    responseMap.map<UserModel>((resp) {
      final model = UserModel(
          id: resp['id'] as String,
          nome: resp['nome'] as String,
          sinopse: resp['sinopse'] as String,
          foto: resp['foto'] as String);
    }).toList();
  }
}
