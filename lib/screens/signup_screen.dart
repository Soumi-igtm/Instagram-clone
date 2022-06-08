import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

import '../utils/colors.dart';
import '../widgets/text_field_input.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();
  final TextEditingController _bioController= TextEditingController();
  final TextEditingController _usernameController= TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32 ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              SvgPicture.asset(
                'img/insta_logo.svg', color: Colors.white, height: 64,
              ),
              SizedBox(height: 24,),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80"),
                  ),
                  Positioned(
                    bottom: -10,
                      left: 80,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.add_a_photo),
                      ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              TextFieldInput(
                hinText: 'Enter your username',
                textInputType: TextInputType.text,
                textEditingController: _usernameController,
              ),
              SizedBox(height: 24,),
              TextFieldInput(
                hinText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              ),
              SizedBox(height: 24,),
              TextFieldInput(
                hinText: 'Enter your password',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
              ),
              SizedBox(height: 24,),
              TextFieldInput(
                hinText: 'Enter your bio',
                textInputType: TextInputType.text,
                textEditingController: _bioController,
              ),
              SizedBox(height: 24,),
              InkWell(
                onTap: () async{
                  String res = await AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _usernameController.text,
                      bio: _bioController.text);
                  print(res);
                },
                child: Container(
                  child: const Text("Sign Up"),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(4)
                      ),
                    ),
                    color: blueColor,
                  ),
                ),
              ),
              Flexible(child: Container(), flex: 2),
            ],
          ),
        ),
      ),);
  }
}

