import 'package:flutter/material.dart';
import 'package:flower_app/shared/customTextfiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Mytextfield(
                  TextInputTypeee: TextInputType.emailAddress,
                  hinttextt: "Enter your Email",
                  ispass: false),
              const SizedBox(height: 33),
              Mytextfield(
                TextInputTypeee: TextInputType.text,
                hinttextt: "Enter your Password",
                ispass: true,
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "sign in ",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Center(
                      child: Text(
                        "Don't have an account ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Scaffold();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "signup",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
