import 'package:flutter/material.dart';

  class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container (
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [
               Color(0xffffc2bb),
               Color(0xffd8bfd8),
             ] )
        ),
        child: Column(
          children:<Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Icon(
                Icons.person,
                size: 80,
                color:Colors.white,
              ),
            ),
             SizedBox(
               height: 20,
             ),
             TextFormField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 labelText: "Nickname",
                 labelStyle: TextStyle(
                   color: Colors.black38,
                   fontWeight: FontWeight.w400,
                   fontSize: 20,
                 )
                 
               ),
             ),

              SizedBox(
               height: 10,
             ),
TextFormField(
               keyboardType: TextInputType.text,
               obscureText: true,
               decoration: InputDecoration(
                 labelText: "Senha",
                 labelStyle: TextStyle(
                   color: Colors.black38,
                   fontWeight: FontWeight.w400,
                   fontSize: 20,
                 )
                 
               ),
               style:TextStyle(fontSize: 20),
             ),
              SizedBox(
               height: 50,
             ),
             TextButton(
               onPressed:(){} ,
               child: Text("LOGIN"),
               style: TextButton.styleFrom(
                 backgroundColor: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30)
                 )


               ),
               )
          ],
        ),
 )







    );
  }
}