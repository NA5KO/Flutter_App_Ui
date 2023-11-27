// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            color: Colors.blue,
          ),

        ),
          
            SizedBox(height: 20),
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white70,
              prefixIcon: Icon(Icons.person),
              hintStyle: TextStyle(color: const Color.fromARGB(255, 13, 12, 12)),
              hintText: "Username",
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(500),
            ),

          ),

          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              filled: true,
              
              hintStyle: TextStyle(color: const Color.fromARGB(255, 13, 12, 12)),
              hintText: "Password",prefixIcon: Icon(Icons.lock),
              fillColor: Colors.white70,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(500),)
              
            ),
            obscureText: true,
            
          ),
          SizedBox(height: 20),

          TextButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () { },
          child: Text('Login'),
),
          Text(
            'Forgot your Password?',
            style: TextStyle(color: const Color.fromARGB(255, 35, 101, 109)),

          )
        ],
      ),
    );
  }
}

/*class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromARGB(255, 79, 126, 245)
      ..style = PaintingStyle.fill;
    //a circle
    canvas.drawCircle(Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
*/


              