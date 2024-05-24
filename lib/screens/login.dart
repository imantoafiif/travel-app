import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool _displayPassword = false;
  late String? _username;
  late String? _password;

  void setPasswordVisibility() {
    setState(() {
      _displayPassword = !_displayPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign in now',
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          'Please sign in to continue',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7D848D)
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: SizedBox(
                            height: 56.0,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _username = value;
                                });
                              },
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF7F7F9),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffe3e3e3),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffe3e3e3),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffe3e3e3),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                ),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  color: Color(0xff999999)
                                )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 18.0, right: 18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffe3e3e3),
                              ),
                              color: const Color(0xffF7F7F9),
                              borderRadius: const BorderRadius.all(Radius.circular(16.0))
                            ),
                            child: SizedBox(
                              height: 56.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            _password = value;
                                          });
                                        },
                                        obscureText: !_displayPassword,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Color(0xff999999)
                                          ),
                                        ),
                                      ),
                                    ),   
                                    const SizedBox(width: 12.0),
                                    GestureDetector(
                                      onTap: setPasswordVisibility,
                                      child: Icon(
                                        _displayPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: GestureDetector(
                            onTap: () => {
                              print('tapped')
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0D6EFD)
                                  ),
                                )
                              ),
                            ),  
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 56.0,
                            child: ElevatedButton(
                              onPressed: () {
                                if(_username == null || _password == null) {
                                  return;
                                }
                                print('$_username $_password');
                              }, 
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0D6EFD),
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))
                                )
                              ),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ),
                          ),
                        ),
                        const SizedBox(height: 35.0),
                        RichText(
                          text: TextSpan(
                            text: 'Don\'t have an account ? ',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: 'Sign up',
                                  style: const TextStyle(color: Color(0xff0D6EFD), fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    print('Tap');
                                  }
                              ),
                            ]
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Text('Or sign in with'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('facebook');
                        },
                        child: Image.asset(
                          width: 44.0,
                          'lib/images/sc_fb.png'
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {
                          print('instagram');
                        },
                        child: Image.asset(
                          width: 44.0,
                          'lib/images/sc_ig.png'
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {
                          print('twitter');
                        },
                        child: Image.asset(
                          width: 44.0,
                          'lib/images/sc_tw.png'
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
