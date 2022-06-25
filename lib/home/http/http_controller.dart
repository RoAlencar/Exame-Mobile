import 'package:consumindo_api_com_flutter/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController {
  final IUserRepository _httpRepository;

  HttpController(this._httpRepository);
}
