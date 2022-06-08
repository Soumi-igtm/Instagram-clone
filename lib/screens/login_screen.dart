import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                InkWell(
                  onTap: (){},
                  child: Container(
                    child: const Text("Log In"),
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
                SizedBox(height: 12,),
                Flexible(child: Container(), flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Don't you have an account?"),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text("Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ],
                )
              ],
            ),
      ),
    ),);
  }
}
