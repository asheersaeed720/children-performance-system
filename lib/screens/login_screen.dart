
import 'package:children_performance_system/models/user.dart';
import 'package:children_performance_system/screens/student_list_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserCredential userCredential = UserCredential();

  final _formKey = GlobalKey<FormState>();

  Color textBgColor = Color(0xFFF2EFF5);

  @override
  Widget build(BuildContext context) {
    // EMAIL!!!
    final emailTextFeild = Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: textBgColor,
          filled: true,
          prefixIcon: IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          labelText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value.isEmpty) {
            return 'Please type an email';
          }
          return null;
        },
        onSaved: (value) {
          setState(() {
            userCredential.email = value;
          });
        },
      ),
    );

    // PASSWORD!!!
    final passTextFeild = Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: textBgColor,
          filled: true,
          prefixIcon: IconButton(
            icon: Icon(Icons.lock),
            onPressed: () {},
          ),
          labelText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        // keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        validator: (value) {
          if (value.isEmpty) {
            return 'Please type a password';
          }
          return null;
        },
        onSaved: (value) {
          setState(() {
            userCredential.password = value;
          });
        },
      ),
    );

    //LOGIN BTN!!!
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        minWidth: 100,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // if (_formKey.currentState.validate()) {
          //   _formKey.currentState.save();
          // }
          Navigator.of(context).pushNamed(StudentListScreen.routeName);
        },
        child: Text(
          'LOGIN',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            letterSpacing: 2.1,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 70),
          // padding: EdgeInsets.symmetric(vertical: 96.0),
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.bottomLeft,
          //     end: Alignment.topRight,
          //     colors: [
          //       Theme.of(context).primaryColor,
          //       Theme.of(context).accentColor
          //     ],
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   'Logo Here',
              //   style: Theme.of(context).textTheme.headline,
              // ),
              Image.asset(
                './assets/images/apple.png',
                width: 140,
              ),
              SizedBox(height: 30),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 3,
                  child: Container(
                    height: 280.0,
                    width: 310.0,
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          emailTextFeild,
                          SizedBox(height: 20),
                          passTextFeild,
                          SizedBox(height: 30),
                          loginButton,
                          FlatButton(
                            onPressed: () {},
                            child: Text('SIGNUP'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
