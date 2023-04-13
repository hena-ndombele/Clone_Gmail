import 'package:application_liste_message/views/Login.dart';
import 'package:flutter/material.dart';

class choix extends StatefulWidget {
  const choix({Key? key}) : super(key: key);

  @override
  State<choix> createState() => _choixState();
}

class _choixState extends State<choix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contenair(),

    );
  }
}


Widget _contenair(){
  return Column(
    children: [
      SizedBox(height: 50,),
    _image(),
      SizedBox(height: 20,),
      Text("Configurer votre messagerie",style: TextStyle(fontSize: 24),),
      SizedBox(height: 50,),
      _ligne()
    ],
  );
}

Widget _image(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("images/image1.png",width: 50,)
    ],
  );
}

Widget _ligne(){
  return Column(
    children: [
      Divider(),
      Row(
        children: [
          Image.asset("images/image1.png",width: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.transparent,
                elevation: 0
              ),
              onPressed: (){

              },
              child: Text(
                "Google",style: TextStyle(color:Colors.black45,fontSize: 23),)),
        ],
      ),
      Divider(),
      Row(
        children: [
          Image.asset("images/image1.png",width: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: (){},
              child: Text(
                "Outlook, Hotmail et Live",style: TextStyle(color:Colors.black45,fontSize: 21),)),
        ],
      ),
      Divider(),
      Row(
        children: [
          Image.asset("images/image1.png",width: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: (){},
              child: Text(
                "Yahoo",style: TextStyle(color:Colors.black45,fontSize: 21),)),
        ],
      ),
      Divider(),
      Row(
        children: [
          Image.asset("images/image1.png",width: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: (){},
              child: Text(
                "Exchange et Office 365",style: TextStyle(color:Colors.black45,fontSize: 21),)),
        ],
      ),
      Divider(),
      Row(
        children: [
          Image.asset("images/image1.png",width: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: (){},
              child: Text(
                "Autre",style: TextStyle(color:Colors.black45,fontSize: 21),)),
        ],
      ),
    ],
  );
}
