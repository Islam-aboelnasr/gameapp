import 'package:flutter/material.dart';
import 'dart:math';

void main(){
runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: Text("mygame",
      style: TextStyle(color: Colors.white),
      ),
      
    ),
    body: imagegame(),
  ),
));
}

class imagegame extends StatefulWidget {
  const imagegame({super.key});

  @override
  State<imagegame> createState() => _imagegameState();
}

class _imagegameState extends State<imagegame> {
  int left =1;
  int rayt=2;
  void va (){
                  rayt=Random().nextInt(8)+1;
                  left=Random().nextInt(8)+1;

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text( left==rayt ? "مبروك لقد فزت":
          "حاول مره اخري ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
        fontFamily: "Tajawal",
        fontWeight: FontWeight.bold
        ),
        ),
        Row(
          children: [
            Expanded(child: TextButton(
              onPressed: (){
                setState(() {
                  va();
                });;
              },
              child: Image.asset("images/image-$rayt.png"))),
            



             Expanded(
              
              child: TextButton(
                onPressed: (){
                  setState(() {
                    va();
                    
                    
                  });
                },
                child: Image.asset("images/image-$left.png"))
             ),
          ],
        )
      ],

    );
  }
}





    