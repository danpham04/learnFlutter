import 'dart:convert';

import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/services/repository/home_repository.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class HomeService extends HomeRepository {
  @override
  Future<List<UserModel>> getData() async {
    try {
      // final String response =
      //     await rootBundle.loadString('assets/jsons/user_data.json');
      // final data = await json.decode(response);
      // // nếu response.statusCode = 200, nếu ko bằng 200 thì báo lỗi
      // final user = data;
      // final users = user as List<dynamic>;

      const uri = 'https://66879c080bc7155dc0185037.mockapi.io/users';
      final response = await http.get(Uri.parse(uri));
      final data = jsonDecode(response.body);
      final users = data as List<dynamic>;

      final List<UserModel> loadData = users.map((e) {
        return UserModel.fromMap(e);
      }).toList();

      return loadData;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> createData(UserModel newUser) async {
    try {
      const uri = 'https://66879c080bc7155dc0185037.mockapi.io/users';
      http.Response response = await http.post(
        Uri.parse(uri),
        body: (newUser.toMap()),
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );
      // print(jsonEncode(newUser.toMap()));
      // print(response.statusCode);

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return UserModel.fromMap(data);
      } else {
        throw Exception('Failed to create user');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> deleteData() {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> updateData() {
    // TODO: implement updateData
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> searchData() {
    // TODO: implement searchData
    throw UnimplementedError();
  }
}
