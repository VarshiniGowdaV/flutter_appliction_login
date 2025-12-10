import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (!mounted) return;  // ★ FIXED

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );

    } catch (error) {
      if (!mounted) return; // ★ FIXED

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 15),
            ElevatedButton(onPressed: login, child: Text("Login")),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SignupPage()),
                );
              },
              child: Text("Create New Account?"),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/homepage.dart';
// import 'package:flutter_application_1/signup_page.dart';


// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   Future<void>login()async{
//     try{
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email:emailController.text.trim(),
//          password:passwordController.text.trim(),
//          );
//          Navigator.pushReplacement(
//           context,MaterialPageRoute(builder: (context)=>Homepage()),
//           );
//     }catch(error) {
//       ScaffoldMessenger.of(context,
//       ).showSnackBar(SnackBar(content: Text(error.toString()),));

//     }
//   }
//   final TextEditingController emailController=TextEditingController();
//   final TextEditingController passwordController=TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: "Email"),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(labelText: "Password"),
//               obscureText: true,
//             ),
//             SizedBox(height: 15),
//             ElevatedButton(onPressed: login, child: Text("Login")),
//             TextButton(
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => SignupPage()),
//               ),
//               child: Text("Create New Account?"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
