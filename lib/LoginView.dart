import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: anaYapi(height1, width1),
      ),
    );
  }

  Padding anaYapi(double height1, double width1) {
    return Padding(
      padding: EdgeInsets.all(width1 / 15),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            welcomeText(),
            SizedBox(height: height1 / 20),
            emailContainer(),
            SizedBox(height: height1 / 40),
            passwordContainer(),
            SizedBox(height: height1 / 20),
            loginButtonContainer(height1, width1),
            SizedBox(height: height1 / 8.5),
            forgotPasswordText(),
            SizedBox(height: height1 / 60),
            signInText(),
          ],
        ),
      ),
    );
  }

  Text welcomeText() {
    return Text("Welcome!",
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold));
  }

  Container emailContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.deepOrange, blurRadius: 10)]),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Email or Username",
              hintStyle: TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }

  Container passwordContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.deepOrange, blurRadius: 10)]),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }

  Widget loginButtonContainer(double height1, double width1) {
    return Container(
      height: height1 / 12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.deepOrange.withOpacity(0.6)])),
      child: MaterialButton(
          onPressed: () {},
          child: Text("Login",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }

  Center forgotPasswordText() {
    return Center(
      child: Text("Forgot Password?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  Center signInText() {
    return Center(
      child: Text("Dont you have an account? Sign In!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
