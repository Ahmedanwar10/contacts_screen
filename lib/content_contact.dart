import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentContact extends StatelessWidget {

bool isVasibility;
ContentContact({super.key,  this.isVasibility=false});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVasibility,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 20,left: 20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.10,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45)

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Name : ',style: TextStyle(fontSize: 17),),
          SizedBox(height: 10,),
          Text('Phone : ',style: TextStyle(fontSize: 17),),
        ],
        ),
      ),
    );
  }
}
