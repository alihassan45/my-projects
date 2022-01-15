import 'package:ali/main.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isvisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: const [
              
              Text(
                'SignUp Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  

                ),
                ),
            ],
          ),
          const SizedBox(

            width: 400,
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter your name'),
            ),
          ),
           const SizedBox(
            width: 400,
            child:TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your Number'),
            ),
           ),
           const SizedBox(
             width: 400,
             child: TextField(
               decoration: InputDecoration(hintText: ('Enter your Email')),
             ),
           ),
             SizedBox(
             width: 400,
             child: TextField(
               obscureText: _isvisible,
               obscuringCharacter: '*',
               decoration: InputDecoration(
                 suffix: IconButton(
                   icon: Icon(_isvisible?Icons.visibility:Icons.visibility_off),
                   onPressed: (){
                     setState(() {
                       _isvisible=!_isvisible;
                     });
                     
                   },
                 ),

                 hintText: ('Enter your Password')),
             ),
           ),
           const SizedBox(
             height: 20, 
           ),
           TextButton(
             style: TextButton.styleFrom(backgroundColor: Colors.black),
             child: Text('SignUp',style: TextStyle(color: Colors.white),),
             onPressed: (){
               Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const  LoginPage())
                );
             },
           ),

        ],
      ),
      
    );
  }
}