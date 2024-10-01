import 'package:flutter/material.dart';
import 'package:flutter_login/loginscreen.dart';


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
       body: SafeArea(
        child: Padding(
         padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => Login()),
                  );
                },
               child: SizedBox(
                  
                  child: TextButton(
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    
                    child: const Text(
                      'login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
           const   Align(alignment: Alignment.center,
              child: const Text(
                 'Signup ',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
              ),
               const Align(alignment: Alignment.center,
                   child: Text(
                'Sign up to find your desired,job connect with other skilled professionals,team up and earn',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              ),
               ),
              const SizedBox(
                height: 20,
              ),
               const Text(
                'Username',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),

              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(
                height: 5,
              ),
               const Text(
                'Confirm Password',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Login()),
                        );
                      },
                      
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ))),
              const SizedBox(
                height: 10,
              ),
             
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text('')
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Text(
                      'Continue with google',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text('')
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
                ),
               Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Text(
                      'Continue with apple ID',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text('')
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                  child: Text(
                'By continuing, you agree to out Terms and Conditions and have read our Privacy Policy',
                style: TextStyle(color: Colors.black54, fontSize: 10),
              ))
            ],
          ),
        ),
      )),
    );
  }
}