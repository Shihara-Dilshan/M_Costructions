import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final secureText = useState(false);
    TextEditingController usernameController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm,
                          size: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "SVAM Constructions",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            letterSpacing: 3,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: "Your username",
                        labelText: "Username",
                        labelStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 15),
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Your password",
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 15),
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(secureText.value
                              ? Icons.security
                              : Icons.remove_red_eye),
                          onPressed: () {
                            secureText.value = !secureText.value;
                          },
                        ),
                      ),
                      obscureText: secureText.value,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          print(usernameController.text);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Don't have account? "),
                        TextButton(
                          child: Text(
                            "Please Create Account",
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
