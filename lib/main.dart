import 'package:email_login_signup/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTEC = TextEditingController();
  TextEditingController _passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/adil.jpg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome to My App"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _emailTEC,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passwordTEC,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var _email = _emailTEC.text;
                        var _password = _passwordTEC.text;

                        print("Email: " + _email);
                        print("Password: " + _password);

                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return HomeScreen();
                        }), (route) => false);
                      },
                      child: Text("Login"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Signup"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
