import 'package:flutter/material.dart';
class Imagewithtext extends StatelessWidget {
  final String text;
  final String img;
  const Imagewithtext({super.key,required this.text,required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Row(
          children: [
            Image.asset(img),
            SizedBox(width: 10,),
            Text(text,style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
