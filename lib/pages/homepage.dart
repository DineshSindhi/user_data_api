import 'dart:convert';
import 'package:api_l/model/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;
import 'data_page.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users'),centerTitle: true,backgroundColor: Colors.blue.shade300),
      body: FutureBuilder(
        future: getUser(),
        builder: (_,snap){
          if(snap.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }else if(snap.hasError){
            return Center(child: Text('${snap.error}'),);
          }else if(snap.hasData){
            return snap.data!=null?snap.data!.users!.isNotEmpty?
                ListView.builder(
                  itemCount: snap.data!.users!.length,
                  itemBuilder: (context, index) {
                    var mData=snap.data!.users![index];
                  return Column(
                    children: [
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DataPage(model: snap.data!,userIndex: index,),));
                        },
                        leading: CircleAvatar(
                          child: Image.network('${mData.image}'),
                        ),
                        title: Text('Name - ${mData.firstName}'),
                        subtitle: Text('SurName - ${mData.lastName}'),
                        trailing: Text('Age - ${mData.age}'),
                      ),
                    ],
                  );
                },):Center(child: CircularProgressIndicator(),)
                :Center(child: Text('No Data Found'),);
          }
          return Container();
        },

      ),
    );
  }

  Future<DataModel?>getUser()async{
    DataModel? postData;
    String url='https://dummyjson.com/users';
    var response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      var mData=response.body;
      var rawData=jsonDecode(mData);
      postData=DataModel.fromJson(rawData);
    }
    return postData;
  }
}

// userData!=null?userData!.users!.isNotEmpty?
//                 ListView.builder(
//                   itemCount: userData!.users!.length,
//                   itemBuilder: (context, index) {
//                     var mData=userData!.users![index];
//                   return Column(
//                     children: [
//                       ListTile(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => DataPage(model: userData!,index: index,),));
//                         },
//                         title: Text('${mData.firstName}'),
//                         subtitle: Text('${mData.company!.address!.city}'),
//                         trailing: Text('${mData.address!.city}'),
//                       ),
//                       // SizedBox(
//                       //   height: 200,
//                       //   child: ListView.builder(itemBuilder: (context, childIndex) {
//                       //     return  ListTile(
//                       //       title: Text('${mData.address!.address}'),
//                       //       subtitle: Text('${mData.address!.city}'),
//                       //       //trailing: Text('${mData.address}'),
//                       //     );
//                       //   },),
//                       // )
//                     ],
//                   );
//                 },):Center(child: CircularProgressIndicator(),)
//                 :Center(child: Text('No Data Found'),),

//getUser()async{
//
//     String url='https://dummyjson.com/users';
//     var response=await http.get(Uri.parse(url));
//     if(response.statusCode==200){
//       var mData=response.body;
//       var rawData=jsonDecode(mData);
//       userData=DataModel.fromJson(rawData);
//       setState(() {
//
//       });
//     }
//   }