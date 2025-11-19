import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey=GlobalKey<FormState>();
  loginfunc(){
    if(_formkey.currentState!.validate())
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login Sucessfully..!"),
        duration: Duration(seconds: 1),
        ));
        Navigator.pushNamed(context, '/home');
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid email or password"),duration: Duration(seconds: 1),backgroundColor: Colors.red.shade700,));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 1, 71, 19),const Color.fromARGB(255, 0, 214, 64)])
        ),
        child: Center(
          child: Form(
            key: _formkey,
            
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [BoxShadow(
                    color: Colors.yellow.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 1) 
                  )]
                ),
               height: 500,
               width: 300,

                padding: EdgeInsets.all(20.0),

                child: Column(
                  children: [
                    Text("Welcome Back",style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                     SizedBox( height: 50,),
                     TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        hint: Text("enter your email"),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30,)
                        )
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your email first";
                        }
                        return null;
                      },
                     ),
                            
                      SizedBox( height: 16,),
                            
                            
                     TextFormField(
                      decoration: InputDecoration(
                        label: Text("Password",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        hint: Text("enter your password"),
                        fillColor: Colors.white10,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                       ),
                       obscureText: true,
                       validator: (value){
                        if(value!.isEmpty){
                          return "Enter your Password First";
                        }
                        return null;
                       },
                     ),
                            
                     SizedBox(height: 40,),
                     ElevatedButton(onPressed: (){loginfunc();},style: ElevatedButton.styleFrom(minimumSize: Size(300, 55)), 
                     child: 
                     Text("Login",
                     style: TextStyle(color: Colors.black, 
                     fontSize: 16,
                     fontWeight: FontWeight.bold,),
                     )
                     ),
                     
                     SizedBox(height: 12,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.symmetric()),
                                                      Text("Don't have an account?" ),
                                                      SizedBox(width: 4,),
                                                      TextButton(onPressed: (){Navigator.pushNamed(context, '/register');}, child: Text("Sign In", style: TextStyle(color: Colors.deepPurple),))
                            
                      ],
                     )
                            
                            
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}