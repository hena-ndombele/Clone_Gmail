
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application_liste_message/views/Login.dart';



class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 300,),
            Image.asset("images/image1.png",width: 180,),
           SizedBox(height: 100,),
           Expanded(child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Google",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 25),),
               Text("Workspace",style: TextStyle(color:Colors.grey,fontSize: 25))
             ],
           ))

          ],
        ),
      ),

    );
  }
}
