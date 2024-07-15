import 'package:chage_learn_flutter/model/user_model.dart';

abstract class HomeRepository{
  
  Future<List<UserModel>> getData();

  Future<List<UserModel>> searchData();

  Future<bool> deleteData(String id);

  Future<UserModel> updateData();

  Future<UserModel> createData(UserModel newUser);
}