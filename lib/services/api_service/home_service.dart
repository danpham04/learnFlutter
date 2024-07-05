import 'dart:convert';

import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/services/repository/home_repository.dart';
import 'package:flutter/services.dart';

class HomeService extends HomeRepository {
  @override
  Future<UserModel> createData() {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> deleteData() {
    
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getData() async {
    try {
      final String response =
        await rootBundle.loadString('assets/jsons/user_data.json');

        /// nếu response.statusCode = 200, nếu ko bằng 200 thì báo lỗi
    final data = await json.decode(response);
    final user = data["data"];
    final users = user as List<dynamic>;

    final List<UserModel> loadData = users.map((e) {
      return UserModel.fromMap(e);
    }).toList();
    
    return loadData;
    } catch (e) {
      throw e;
    }

  }

  @override
  Future<List<UserModel>> searchData() {
    // TODO: implement searchData
    throw UnimplementedError();
  }

  @override
  Future<UserModel> updateData() {
    // TODO: implement updateData
    throw UnimplementedError();
  }
}
