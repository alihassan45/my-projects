import 'package:ali/signup_page.dart';
import 'package:flutter/material.dart';

class Prectice
 extends StatelessWidget {
  const Prectice
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text('Practice',style: TextStyle(color: Colors.white),),
        actions: [
        Icon(Icons.label_important),
        Icon(Icons.label_important),
        Icon(Icons.label_important),
        Icon(Icons.label_important),
        Icon(Icons.label_important)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/sop1.png'),

            ),
           const Text('Ali Hassan',style: TextStyle(color: Colors.white,fontSize: 30),),
           SizedBox(
             width: 500,
             child: TextField(
               decoration: InputDecoration(
                 hintText: ('Enter your name'),
               ),
             ),
             
           ),
           SizedBox(
             width: 500,
             child: TextField(
               decoration: InputDecoration(hintText: ('Enter your password')),
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextButton(
                 child: Text('login',style: TextStyle(color: Colors.white),),
                 onPressed: (){  
                 },
                 style: TextButton.styleFrom(backgroundColor: Colors.black),
               ),
               SizedBox(width: 20,),
               TextButton(
                 child: Text('Signup',style: TextStyle(color: Colors.white),),
                 onPressed: (){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> SignUpPage()));
                 },
                 style: TextButton.styleFrom(backgroundColor: Colors.black),
               )
             ],
             
           )
          ],),
      ),
    );
  }
}