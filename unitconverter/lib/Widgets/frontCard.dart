import 'package:flutter/material.dart';
import 'package:unitconverter/Const/colors.dart';
import 'package:unitconverter/Const/imageList.dart';
import 'package:unitconverter/Screens/converterScreen.dart';

Widget frontCard (BuildContext ctx, int i, aspectRatio){
  return GestureDetector(
    onTap: (){
      Navigator.push(
        ctx,
        MaterialPageRoute(builder: (context) => converterScreen(i)),
      );
    },
    child: Card(
      elevation: 10,
      color: cardbottomColor,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: cardColor,),

              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  imageList[i],
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            Center(
              child: Text(
                nameList[i],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}