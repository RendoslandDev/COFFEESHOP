import 'package:coffeepack/models/mybutton.dart';
import 'package:coffeepack/models/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passController = TextEditingController();

  void login(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          elevation: 0,
          title: Text(
            "C O F F E E",
            style: GoogleFonts.abel(
                fontSize: 25, color: Colors.brown, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: CircleAvatar(
                // backgroundColor: Colors.transparent,
                foregroundColor: Colors.brown,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.woman,
                      size: 20,
                    )),
              ),
            )
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/sexual.jpg")),
              const SizedBox(height: 40),
              SizedBox(
                height: 20,
                child: Text(
                  "HAVE A TASTE OF THE NEW RECIPE!",
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
                  const SizedBox(height: 15),
                  MyButton(
                    text: "Login",
                    onTap: () => login(context),
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
                          "Register Now",
                          style: GoogleFonts.abel(
                              color: Colors.grey.shade600,
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
