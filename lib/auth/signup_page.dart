import 'package:coffeepack/models/mybutton.dart';
import 'package:coffeepack/models/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  final void Function()? onTap;
  SignupPage({super.key, this.onTap});

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passController = TextEditingController();

  final TextEditingController _confirmpassController = TextEditingController();

  void signup(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "C O F F E E",
            style: GoogleFonts.abel(
                fontSize: 25, color: Colors.brown, fontWeight: FontWeight.bold),
          ),
          titleSpacing: 30,
          centerTitle: true,
          actions: [
            CircleAvatar(
              // backgroundColor: Colors.transparent,
              foregroundColor: Colors.brown,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.woman,
                    size: 30,
                  )),
            )
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/sexual.jpg")),
              const SizedBox(height: 20),
              SizedBox(
                height: 20,
                child: Text(
                  "JOIN IN AND HAVE  THE TASTE OF SWEETNESS",
                  style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  MyTextField(
                      hintText: "Email",
                      obscureText: false,
                      controller: _emailController),
                  const SizedBox(height: 10),
                  MyTextField(
                      hintText: "Password",
                      obscureText: false,
                      controller: _passController),
                  const SizedBox(height: 10),
                  MyTextField(
                      hintText: "Confirm Password",
                      obscureText: false,
                      controller: _confirmpassController),
                  const SizedBox(height: 15),
                  MyButton(
                    text: "Login",
                    onTap: () => signup(context),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member? ",
                        style: GoogleFonts.sacramento(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: onTap,
                        child: Text(
                          "Login Now",
                          style: GoogleFonts.abel(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
