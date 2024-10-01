import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login/homescreen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = true;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      final String username = usernameController.text;
      final String password = passwordController.text;

      final response = await http.post(
        Uri.parse('https://dth.kelaxa.com/api/v1/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password,
          'is_remember': 'true',
        }),
      );
  
  print(response.body);
  

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          SharedPreferences preferences = await SharedPreferences.getInstance();
            await preferences.setString('username', jsonResponse['data']['user']['username']);
            await preferences.setString('email', jsonResponse['data']['user']['email']);
            await preferences.setString('created_at', jsonResponse['data']['user']['created_at']);
            await preferences.setString('role_id', jsonResponse['data']['user']['role_id']);

            print(jsonResponse);
            print(jsonResponse['data']['user']['username']);
            print(jsonResponse['data']['user']['email']);
            print(jsonResponse['data']['user']['created_at']);
            print(jsonResponse['data']['user']['role_id']);

         Navigator.pushReplacement(
            context,
               MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else {
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('${jsonResponse['meta']['message']}'),
           ));
            }
        
           } else {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: const Text('Login Failed.'),
                ));
        
          }
        }
       }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login to find your desired job, connect with skilled professionals, team up, and earn',
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Username',
                    style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  TextFormField(
                    controller: usernameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Password',
                    style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: passwordVisible,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Your Password',
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: _login,
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}