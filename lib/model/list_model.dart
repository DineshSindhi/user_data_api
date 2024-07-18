class CryptoModel {
  String? coin;
  String? network;
  String? wallet;

  CryptoModel(
      {required this.coin, required this.network, required this.wallet});

  factory CryptoModel.fromJson(Map<String, dynamic>json){
    return CryptoModel(
        coin: json['coin'],
        network: json['network'],
        wallet: json['wallet']
    );
  }
}

class HairModel {
  String? color;
  String? type;

  HairModel({required this.type, required this.color});

  factory HairModel.fromJson(Map<String, dynamic>json){
    return HairModel(
        type: json['type'],
        color: json['color']);
  }
}

class AddressModel {
  String? address;
  String? city;
  String? postalCode;
  String? state;
  CoordinatesModel?coordinates;

  AddressModel(
      {required this.state, required this.address, required this.city, required this.postalCode,required this.coordinates });

  factory AddressModel.fromJson(Map<String, dynamic>json){
    var mCoordinates=CoordinatesModel.fromJson(json['coordinates']);
    return AddressModel(
      state: json['state'],
      address: json['address'],
      city: json['city'],
      postalCode: json['postalCode'],
      coordinates: mCoordinates,
    );
  }
}

class BankModel {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  BankModel(
      {required this.cardExpire, required this.cardNumber, required this.cardType, required this.currency, required this.iban});

  factory BankModel.fromJson(Map<String, dynamic>json){
    return BankModel(
        cardExpire: json['cardExpire'],
        cardNumber: json['cardNumber'],
        cardType: json['cardType'],
        currency: json['currency'],
        iban: json['iban']
    );
  }
}

class CompanyModel {
  String? department;
  String? name;
  String? title;
  AddressModel?address;

  CompanyModel(
      {required this.address, required this.title, required this.name, required this.department});

  factory CompanyModel.fromJson(Map<String, dynamic>json){
    var mAdd=AddressModel.fromJson(json['address']);
    return CompanyModel(
        address: mAdd,
        title: json['title'],
        name: json['name'],
        department: json['department']
    );
  }
}

class CoordinatesModel {
  num? lat;
  num? lng;

  CoordinatesModel({required this.lat, required this.lng});

  factory CoordinatesModel.fromJson(Map<String, dynamic>json){
    return CoordinatesModel(
        lat: json['lat'],
        lng: json['lng']
    );
  }
}
