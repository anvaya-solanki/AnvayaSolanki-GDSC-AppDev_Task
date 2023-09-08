import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  MyLoginState createState() => MyLoginState();
}

class MyLoginState extends State<MyLogin> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('GDSC Login Page'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/gdsc-social-share.png',
                alignment: Alignment.topCenter,
                width: 600,
                height: 600,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 370, left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: isHiddenPassword,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'Password',
                        suffixIcon: InkWell(
                          onTap: togglePassword,
                          child: Icon(Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromRGBO(34, 163, 255, 0.521),
                          child: IconButton(
                            color: Color.fromARGB(255, 39, 39, 39),
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color.fromRGBO(255, 44, 44, 0.45),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color.fromRGBO(255, 44, 44, 0.45),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void togglePassword() {
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }
}
