import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var passwordVisible = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Text(
                  "Create your account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorConstant.MainGreen),
                ),
              ),
              TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    EmailValidator(errorText: "Enter valid email id"),
                  ]),
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: "Email",
                    hintText: "Enter your email",
                    prefixIcon:
                        Icon(color: ColorConstant.MainGreen, Icons.email),
                  )),
              TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  MinLengthValidator(6,
                      errorText: "Password should be atleast 6 characters"),
                  MaxLengthValidator(15,
                      errorText:
                          "Password should not be greater than 15 characters")
                ]),
                //validatePassword,   ,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.center,
                controller: passwordcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon:
                        Icon(color: ColorConstant.MainGreen, Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                        passwordVisible = !passwordVisible;
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    )),
              ),
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorConstant.MainGreen,
                    ),
                  ),
                  textAlign: TextAlign.center),
              TextField(
                  controller: PhoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Phone Number",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: ColorConstant.MainGreen,
                    ),
                  ),
                  textAlign: TextAlign.center),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ColorConstant.White),
                  ),
                  onPressed: () async {
                    final SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    if (emailcontroller.text.trim().isNotEmpty &&
                        passwordcontroller.text.trim().isNotEmpty) {
                      await pref.setString(
                          "email", emailcontroller.text.trim());
                      await pref.setString(
                          "password", passwordcontroller.text.trim());
                      print(nameController.text);
                      print(PhoneController.text);

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor:
                              const Color.fromARGB(255, 236, 89, 78),
                          content: Text("Enter a valid username and password!"),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: SizedBox(
                  child: Text(
                    "Already have an account? Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ColorConstant.MainGreen),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ]),
      ),
    );
  }
}
