import 'package:flutter/material.dart';
import 'package:loginpage/second.dart';

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController uname = TextEditingController();
  TextEditingController pwd = TextEditingController();

  void log() {
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/log2.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500),
                child: TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: 'Username'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500),
                child: TextField(
                  controller: pwd,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(50)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const second()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 100),
              //   child: TextButton(
              //     onPressed: () { log(); },
              //     child: Text('LOGIN'),
              //     style: ButtonStyle(
              //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(50),
              //             side: BorderSide(color: Colors.blue),
              //         ))),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 10,),
              FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password ? ',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
