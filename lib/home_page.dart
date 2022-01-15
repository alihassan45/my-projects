import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Dominos',style: TextStyle(color:Colors.blue,fontSize: 20,fontWeight: FontWeight.bold ),),
        leading: Icon(Icons.menu,size: 30,color: Colors.red,),
        actions: const [
          Icon(Icons.send,size: 30,color: Colors.red,),
        ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: [
                  Expanded(child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: (){
      
                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.electric_bike,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Delivery',style: TextStyle(color: Colors.white),),
                      ],
                    ) ,
                  )),
                   Expanded(child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: (){
      
                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.takeout_dining,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Takeaway',style: TextStyle(color: Colors.white),),
                      ],
                    ) ,
                  ))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.black,
              child: const Center(child: Text('Adress will show here',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold) ,)),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network('https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',fit: BoxFit.fill,),
            ),
            const SizedBox(height: 10,),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ImageContainer(imageUrl: 'images/sop1.png',label: 'maintain distance',),
                  VerticalDivider(color: Colors.red,width: 1,thickness: 2,),
                  ImageContainer(imageUrl: 'images/sop2.png',label: 'dont sneez',),
                  VerticalDivider(color: Colors.red,width: 1,thickness: 2,),
                  ImageContainer(imageUrl: 'images/sop3.png',label: 'stay home',),
                  VerticalDivider(color: Colors.red,width: 1,thickness: 2,),
                  ImageContainer(imageUrl: 'images/sop4.png',label: 'wear mask',),
                  VerticalDivider(color: Colors.red,width: 1,thickness: 2,),
                  ImageContainer(imageUrl: 'images/sop5.png',label: 'vacciented',),
                ],
              ),
            ),
            const Divider(thickness: 2,color: Colors.red,),
            Container(
              height: 800,
              color: Colors.pink,
            ),
            Container(
              color: Colors.red,
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Image.asset('images/DSC_7644.jpg'),
                    margin: EdgeInsets.all(2),
                    height: 200,
                    width: 200,
                    color: Colors.black,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final String label;
  const ImageContainer({ Key? key, required this.imageUrl, required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [
          Container(
            width: 40,
      height: 40,
            child: Image.asset(imageUrl,fit: BoxFit.fill,)),
          Text(label,style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}