

import 'package:ali/home_page.dart';
import 'package:ali/prectice.dart';
import 'package:ali/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AliHassan());
}
class AliHassan extends StatelessWidget {
  const AliHassan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: SafeArea(child: LoginPage()),


    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShow=true;
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
    
      backgroundColor: Colors.teal,
    
      appBar: AppBar(

    
        centerTitle: true,
    
        backgroundColor: Colors.red,
    
      title: const Text('My First App'),
    
    ),
    
    body: Center(
    
      child: Column(
    
        mainAxisAlignment: MainAxisAlignment.center,
    
        children:  [
    
          const CircleAvatar(
    
            //backgroundColor: Colors.orange,
    
            radius: 100.0,
    
            backgroundImage: AssetImage('images/DSC_7644.jpg'),
    
            
    
          ),
    
          const Text('Muhammad Shahzad',style: TextStyle(color: Colors.white,fontSize: 30.0)),
    
          const SizedBox(
    
            width: 400,
    
            child: TextField(
    
              decoration: InputDecoration(
    
                hintText: 'Enter your name'
    
              ),
    
            ),
    
          ),
    
           SizedBox(
    
            width: 400,
    
            child: TextField(
              obscuringCharacter: '*',
              obscureText: isShow,
              maxLength: 10,
              decoration: InputDecoration(
                suffix: IconButton(
                  icon: Icon(isShow?Icons.visibility:Icons.visibility_off),
                  onPressed: (){
                    setState(() {
                      isShow=!isShow;
                    });
                  },
                ),
    
                hintText: 'Enter your password'
    
              ),
    
            ),
    
          ),
    
          SizedBox(height: 20,),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
    
                child: Text('Login',style: TextStyle(color: Colors.white),),
    
                onPressed: (){
                 // SnackBar(backgroundColor: Colors.black,content: Text('login successfuly'),);
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>HomePage()));
                },
    
                style: TextButton.styleFrom(
    
                  backgroundColor: Colors.black
    
                ),
    
              ),
              SizedBox(width: 20,),
 TextButton(
    
            child: Text('Signup',style: TextStyle(color: Colors.white),),
    
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const  SignUpPage())
              );
            },
    
            style: TextButton.styleFrom(
    
              backgroundColor: Colors.black
    
            ),
    
          ),
            ],
          ),
          
         
    
        ],
    
      ),
    
    )
    
    
    
    
    
    );
  }
}