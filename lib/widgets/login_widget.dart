import 'package:ewallet/constants.dart';
import 'package:ewallet/screens/home.dart';
import 'package:ewallet/widgets/signup.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);
  // final FocusNode _priceFocusNode = FocusNode();
  // final FocusNode _descriptionFocusNode = FocusNode();
  // final FocusNode _imageUrlFocusNode = FocusNode();
  // final TextEditingController _phoneController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _form,
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
                      // controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: kRobotoTextField,
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      // validator: (value) {
                      //   if (value == null || value!.trim().length == 0) {
                      //     return "Please Enter Your Phone Number";
                      //   }
                      //   return null;
                      // },
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
                      // controller: _phoneController,
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
                      // validator: (value) {
                      //   if (value == null) {
                      //     return "Please Enter Password";
                      //   }
                      // },
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
                  // var isValid = _form.currentState!.validate();
                  // if (!isValid) {
                  //   return;
                  // }
                  // _form.currentState!.save();

                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                },
                child: Text(
                  "LOGIN",
                  style: kRoboto,
                ),
                style: ElevatedButton.styleFrom(
                    primary: kYellow,
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
