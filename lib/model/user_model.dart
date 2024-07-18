import 'list_model.dart';

class UserModel {
  int? id;
  int? age;
  double? height;
  num? weight;
  String? birthDate;
  String? bloodGroup;
  String? domain;
  String? ein;
  String? ip;
  String? email;
  String? eyeColor;
  String? firstName;
  String? gender;
  String? image;
  String? lastName;
  String? macAddress;
  String? maidenName;
  String? password;
  String? phone;
  String? ssn;
  String? university;
  String? userAgent;
  String? username;
  AddressModel? address;
  BankModel? bank;
  CompanyModel? company;
  CryptoModel? crypto;
  HairModel? hair;

  UserModel({required this.address,
    required this.id,
    required this.email,
    required this.age,
    required this.bank,
    required this.birthDate,
    required this.bloodGroup,
    required this.company,
    required this.crypto,
    required this.domain,
    required this.ein,
    required this.eyeColor,
    required this.firstName,
    required this.gender,
    required this.hair,
    required this.height,
    required this.image,
    required this.lastName,
    required this.macAddress,
    required this.maidenName,
    required this.password,
    required this.phone,
    required this.ssn,
    required this.university,
    required this.userAgent,
    required this.username,
    required this.weight,
    required this.ip
  });

  factory UserModel.fromJson(Map<String, dynamic>json){

    var mAddress=AddressModel.fromJson(json['address']);
    var mBank=BankModel.fromJson(json['bank']);
    var mCrypto=CryptoModel.fromJson(json['crypto']);
    var mHair=HairModel.fromJson(json['hair']);
    var mCompany=CompanyModel.fromJson(json['company']);

    return UserModel(ip: json['ip'],
        address:mAddress,
        id: json['id'],
        email: json['email'],
        age: json['age'],
        bank: mBank,
        birthDate: json['birthDate'],
        bloodGroup: json['bloodGroup'],
        company: mCompany,
        crypto: mCrypto,
        domain: json['domain'],
        ein: json['ein'],
        eyeColor: json['eyeColor'],
        firstName: json['firstName'],
        gender: json['gender'],
        hair: mHair,
        height: json['height'],
        image: json['image'],
        lastName: json['lastName'],
        macAddress: json['macAddress'],
        maidenName: json['maidenName'],
        password: json['password'],
        phone: json['phone'],
        ssn: json['ssn'],
        university: json['university'],
        userAgent: json['userAgent'],
        username: json['username'],
        weight: json['weight'],
    );
  }
}