import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }

}
class LoginState extends State<Login>{
  void _showWelcome(){
    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty )
      {
        _welcomeString = _userController.text;
      }else
      {
        _welcomeString = "Nothing";
      }
    });
  }
  void _erase(){
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _welcomeString="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            //image profile
            Image.asset("images/face.png",
            width: 90.5,
            height: 90.5,
              color: Colors.greenAccent,

            ),
            Container(
              height:180.0 ,
              width: 380.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.5)),
                  Center(
                    child: Row(
                      children: <Widget>[
                        //login button
                        Container(
                          margin: EdgeInsets.only(left: 38.0),
                          child: RaisedButton(onPressed: _showWelcome,
                          color: Colors.redAccent,
                          child: Text("Login",
                          style:TextStyle(color: Colors.white,fontSize: 16.9) ,
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120.0),
                          child: RaisedButton(onPressed: _erase,
                            color: Colors.redAccent,
                            child: Text("Clear",
                              style:TextStyle(color: Colors.white,fontSize: 16.9) ,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            Padding(padding: EdgeInsets.all(14.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Welcome $_welcomeString",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.4,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            )
          ],

        ),

      ),
    );

  }

}