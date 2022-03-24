import 'package:ewallet/constants.dart';
import 'package:ewallet/screens/home.dart';
import 'package:ewallet/widgets/signup.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style: kRobotoWhiteLarge,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Phone Number",
                        style: kRoboto,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: kRobotoTextField,
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: kRoboto,
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: kRobotoTextField,
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: kRoboto,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Text(
                  "LOGIN",
                  style: kRoboto,
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 10.0)),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("don't have an account?", style: kRoboto),
              //     TextButton(
              //         onPressed: () {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) => SignUP()));
              //         },
              //         child: Text("Sign Up"))
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
