import 'package:flutter/material.dart';


class Mbutton extends StatelessWidget {
  final String text;
  final bool operator;
  // Function onPressed;

  Mbutton({super.key,required this.text,
   required this.operator,
  //  required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: operator?Colors.blueAccent:Colors.white,
          // onPrimary: Colors.white,
          shape: const CircleBorder(),
          fixedSize: Size(MediaQuery.of(context).size.width*0.21, MediaQuery.of(context).size.width*0.21),
          
        ) ,
        onPressed: 
        (){},
        // onPressed(), 
        child: Text(text, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),
        fontSize: MediaQuery.of(context).size.width*0.07
        ),
        )),
    );
  }
}

class specialbutton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  Function onPressed;
  specialbutton({super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.025),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          // onPrimary: Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(40)
          ),
          fixedSize: Size(width, height),
          
        ) ,
        onPressed: (){}, 
        child: Text(text, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: MediaQuery.of(context).size.width*0.07),)),
    );
  }
}