import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatarialButton extends StatelessWidget {
String title;
Color colorButton;
Function onPressed;
  MatarialButton({super.key, required this.colorButton,required this.title,
    required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(onPressed:(){
        onPressed();
      },
        color:colorButton,
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(30)
        ),
        child: Text(title),
      ),
    );
  }
}
