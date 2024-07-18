
import 'package:api_l/model/user_model.dart';

class DataModel{
  int? limit;
  int? skip;
  int? total;
  List<UserModel>?users;
  DataModel({required this.total,required this.skip,required this.limit,required this.users,});

  factory DataModel.fromJson(Map<String,dynamic>json){
    List<UserModel>mUser=[];
    for(Map<String,dynamic>eachUser in json['users']){
      mUser.add(UserModel.fromJson(eachUser));
    }
    return DataModel(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      users: mUser,
    );
  }
}