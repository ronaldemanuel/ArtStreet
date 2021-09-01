import 'package:art_street/components/input_form.dart';

import 'singup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffffc2bb),
            Color(0xffd8bfd8),
          ],
        ),
      ),
      child: buildForm(context),
    );
  }

  buildForm(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 128,
          height: 128,
          child: Icon(
            Icons.person,
            size: 80,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InputForm(
          false,
          textType: TextInputType.name,
          label: "Nickname",
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        SizedBox(
          height: 10,
        ),
        InputForm(
          true,
          textType: TextInputType.text,
          label: "Senha",
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            ),
          },
          child: Text("LOGIN"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
