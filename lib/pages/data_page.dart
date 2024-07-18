import 'package:flutter/material.dart';

import '../model/data_model.dart';

class DataPage extends StatelessWidget {
  int userIndex;
  DataModel model;

  DataPage({required this.model, required this.userIndex});

  @override
  Widget build(BuildContext context) {
    var mData = model.users![userIndex];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(height: 40,width: 40,
              child: CircleAvatar(
                child: Image.network('${mData.image}'),
              ),
            ),
            myTextA('    ${mData.firstName}'),
            myTextA('  ${mData.lastName}'),
          ],
        ),

        backgroundColor: Colors.blue.shade300,
      ),
      body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.blue.shade400,
                      child:  Center(child: myText(' Personal Details '),)
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myText20('Name : ${mData.firstName}'),
                            myText20('Surname : ${mData.lastName}'),
                            myText20('MaidenName : ${mData.maidenName}'),
                            myText20('Age : ${mData.age}'),
                            myText20('Username : ${mData.username}'),
                            myText20('BirthDate : ${mData.birthDate}'),
                            myText20('Phone : ${mData.phone}'),
                            myText20('Email : ${mData.email}'),
                            myText20('Password : ${mData.password}'),
                            myText20('Height : ${mData.height}'),
                            myText20('Weight : ${mData.weight}'),
                            myText20('Ssn : ${mData.ssn}'),
                            myText20('BloodGroup : ${mData.bloodGroup}'),
                            myText20('Gender : ${mData.gender}'),
                            myText20('EyeColor : ${mData.eyeColor}'),
                            myText20('Domain : ${mData.domain}'),
                            myText20('Ein : ${mData.ein}'),
                            myText20('MacAddress : ${mData.macAddress}'),
                            myText20('Ip : ${mData.ip}'),
                            myText20('Hair/Color : ${mData.hair!.color}'),
                            myText20('Hair/Type : ${mData.hair!.type}'),
                          ],),
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        color: Colors.blue.shade400,
                        child:  Center(child: myText(' Bank Details '),)
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText20('Address : ${mData.address!.address}'),
                        myText20('State : ${mData.address!.state}'),
                        myText20('City : ${mData.address!.city}'),
                        myText20('PostalCode : ${mData.address!.postalCode}'),
                        myText20('Coordinates/Lng : ${mData.address!.coordinates!.lng}'),
                        myText20('Coordinates/Lat : ${mData.address!.coordinates!.lat}'),
                      ],)
                    ],),
                    Container(
                        width: double.infinity,
                        color: Colors.blue.shade400,
                        child:  Center(child: myText(' Address Details '),)
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myText20('Iban : ${mData.bank!.iban}'),
                            myText20('Currency : ${mData.bank!.currency}'),
                            myText20('CardNumber : ${mData.bank!.cardNumber}'),
                            myText20('CardType : ${mData.bank!.cardType}'),
                            myText20('CardExpire : ${mData.bank!.cardExpire}'),
                          ],)
                      ],),
                    Container(
                        width: double.infinity,
                        color: Colors.blue.shade400,
                        child:  Center(child: myText(' Company Details '),)
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myText20('Name : ${mData.company!.name}'),
                            myText20('Department : ${mData.company!.department}'),
                            myText20('Title : ${mData.company!.title}'),
                            myText20('Address : ${mData.company!.address!.address}'),
                            myText20('State : ${mData.company!.address!.state}'),
                            myText20('City : ${mData.company!.address!.city}'),
                            myText20('PostalCode : ${mData.company!.address!.postalCode}'),
                            myText20('Coordinates/Lng : ${mData.company!.address!.coordinates!.lng}'),
                            myText20('Coordinates/Lat : ${mData.company!.address!.coordinates!.lat}'),
                          ],)
                      ],),
                    Container(
                        width: double.infinity,
                        color: Colors.blue.shade400,
                        child:  Center(child: myText(' Crypto Details '),)
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myText20('Coin : ${mData.crypto!.coin}'),
                            //myText20('Wallet : ${mData.crypto!.wallet}'),
                            myText20('Network : ${mData.crypto!.network}'),
                          ],)
                      ],),
                  ]),
            ),
          )
          // : Center(
          //     child: CircularProgressIndicator(),
          //   ),
    );
  }
  myText20( String text)=>Text(text,style: TextStyle(fontSize: 19,),textAlign: TextAlign.start);
  myText( String text)=>Text(text,style: TextStyle(fontSize: 22,color: Colors.white,),textAlign: TextAlign.center,);
  myTextA( String text)=>Text(text,style: TextStyle(fontSize: 20,));
}
