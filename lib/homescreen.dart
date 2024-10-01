import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,}); 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? username;
  String?role_id ;
  String? email;
  String?created_at ;
   
 
  @override
  void initState() {
    super.initState();
    loadData(); 
  }

  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('username');
      email = preferences.getString('email');
      created_at = preferences.getString('created_at');
      role_id = preferences.getString('role_id');
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: const Text(
          'Welcome To Home',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(username ?? 'No Username', style: TextStyle(color: Colors.white)),
      //       const SizedBox(height: 20),
      //       Text(email ?? 'No Email', style: TextStyle(color: Colors.white)),
      //       const SizedBox(height: 20),
      //       Text(userId ?? 'No User ID', style: TextStyle(color: Colors.white)),
      //     ],
      //   ),
      // ),

       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$username'),
            const SizedBox(height: 20),
            Text('$email'),
            const SizedBox(height: 20),
            Text('$created_at'),
            const SizedBox(height: 20),
            Text('$role_id'),
            const SizedBox(height: 20),
          ],
        ),
     ),
);

    
  }
}