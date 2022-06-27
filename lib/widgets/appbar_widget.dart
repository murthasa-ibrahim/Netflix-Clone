
import 'package:flutter/material.dart';
import 'package:netflix/utilitites/utlities.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,required this.title}) : super(key: key);
 final String title;
  @override
  Widget build(BuildContext context) {
    return
    Row(
      children: [
        kWidth,
        Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
        Spacer(),
        Icon(Icons.cast,color: Colors.white,size: 30,),
        kWidth,
        Container(color: Colors.blue,width: 30,height: 30,),
        kWidth

      ],
    );
  }
}