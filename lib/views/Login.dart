import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              _iconApp(),
              Text(
                "S'identifier",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              _loginSaisie(),
              SizedBox(
                height: 30,
              ),
              _loginPassword(),
              SizedBox(
                height: 30,
              ),
              _creation_compte(),
              SizedBox(
                height: 30,
              ),

              _buttonWidget(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconApp() {
    return Image.asset("images/image1.png",width: 100,
    );
  }

  Widget _loginSaisie() {
    return  TextFormField(

    obscureText: false,
    decoration: InputDecoration(
    suffixIcon: Icon(
    Icons.email,
    color: Colors.blue,
    ),
    labelText: 'Email',
    hintText: 'Email',
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color:Colors.black,
    width: 2,
    ),
    borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color:
    Colors.green,
    width: 2,
    ),
    borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(

    borderSide: BorderSide(
    color: Color(0x00000000),
    width: 2,
    ),
    borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.amber,
    width: 2,
    ),
    borderRadius: BorderRadius.circular(8),
    ),
    filled: true,
    contentPadding:
    EdgeInsetsDirectional.fromSTEB(
    16, 24, 0, 24),
    ),

    );
  }

  Widget _loginPassword() {
    return TextFormField(

      decoration: InputDecoration(
        labelText: 'Mot de passe',
        hintText: 'Mot de passe',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
            Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
            Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        contentPadding:
        EdgeInsetsDirectional.fromSTEB(
            16, 24, 24, 24),
        suffixIcon:
          Icon(
            Icons.visibility_outlined,
            color: Colors.blue,
            size: 22,
          ),
        ),


    );
  }

  Widget _buttonWidget() {
    return Container(
      width: 300,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: Colors.green,
          ),
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => ()),
            );

            },
          child: Text(
            "S'identifier",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }

  OutlineInputBorder _enabledBorder(MaterialColor _color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: _color),
    );
  }




  Widget _creation_compte(){
    return Row(
      children: [
        Text("Vous n'avez pas de compte",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
        GestureDetector(
          child: Text(
            "Créer votre compte",
            style:  TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
          onTap: (){

          },
        )
      ],
    );
  }
}



