
import 'package:flutter/material.dart';

import 'bottun_matarial.dart';
import 'content_contact.dart';

class ContactScreen extends StatefulWidget {
String HintText;
IconData SuffixIcon;
String HintText_p;
IconData SuffixIcon_p;
ContactScreen({super.key, required this.HintText,required this.SuffixIcon,
  required this. HintText_p,required this.SuffixIcon_p});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
      ContentContact item1= ContentContact();

      ContentContact item2 = ContentContact();

      ContentContact item3=ContentContact();


      int counter=0;
  void addItem(){
    int counter=0;
    if( counter ==0){
      item1=ContentContact(
        isVasibility: true,
      );
      counter++;
      setState(() {

      });
    }
    else if(counter==1){
      item2=ContentContact(
        isVasibility: true,
      );
      counter++;
      setState(() {

      });
    }
    else if(counter==2){
      item3=ContentContact(
        isVasibility: true,
      );
      counter++;
      setState(() {

      });
    }
  }
  void deleteItem(){
    if(counter==3) {
      item3 = ContentContact(
        isVasibility: false,

      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,

    title: Text('Contacts Screen',style: TextStyle(fontSize: 20),),
      centerTitle:true,
    ),
      backgroundColor: Colors.grey,

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              decoration:InputDecoration(
                hintText:widget.HintText,
                suffixIcon: Icon(widget.SuffixIcon,color: Colors.blue,),
                enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.black,),

                ),
                fillColor: Colors.white,
                filled: true,
              ) ,
            ),
            const SizedBox(height: 30,),
            TextFormField(
              decoration:InputDecoration(
                hintText:widget.HintText_p,
                suffixIcon: Icon(widget.SuffixIcon_p,color: Colors.blue,),
                enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.black,),

                ),
                fillColor: Colors.white,
                filled: true,
              ) ,
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  MatarialButton(colorButton: Colors.blue, title: 'Add',
                    onPressed: ()
                    {
                      addItem();
                      },
                  ),
                   MatarialButton(colorButton: Colors.red, title: 'Delete', onPressed: (){deleteItem();},),
                ],
              ),
            ),

            item1,
            item2,
            item3,




          ],
        ),
      ),
    );
  }
}
