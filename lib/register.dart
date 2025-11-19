import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
  final _formkey=GlobalKey<FormState>();
  myfunc(){
   if(_formkey.currentState!.validate())
   {
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Congratulations!! You are registered",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green.shade300));
      Navigator.pushNamed(context, '/login');
   }
   else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: 
    Text("Please Fill All Field"),duration: Duration(seconds: 4),
    backgroundColor: Colors.red,));
   }
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: 
                AssetImage('assets/register_bg.jpg'),
                fit: BoxFit.cover,
                )
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.white,Colors.indigoAccent]),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(
                        color: const Color.fromARGB(255, 8, 65, 172).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 1.0,
                        offset: Offset(0, 4)
                      )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sign In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                          ),
                          SizedBox(height: 50,),
                        
                             TextFormField(
                               decoration: InputDecoration(
                                labelText: "Name",
                                hintText: "Enter your FullName", 
                                filled: true, 
                                fillColor:  const Color.fromARGB(255, 216, 233, 247),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                               ),
                               validator: (value){
                                if(value!.isEmpty){
                                  return "Name is required";
                                }
                                return null;
                               },
                            ),
                          
                           SizedBox(height: 25,),
                        
                             TextFormField(
                               decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Enter your email", 
                                filled: true, 
                                fillColor:  const Color.fromARGB(255, 216, 233, 247),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                               ),
                               validator: (value){
                                if(value!.isEmpty){
                                  return "Email is required";
                                }
                                return null;
                               },
                            ),
            
                             SizedBox(height: 25,),
                        
                             TextFormField(
                               decoration: InputDecoration(
                                labelText: "Passwrod",
                                hintText: "Enter your Password", 
                                filled: true, 
                                fillColor:  const Color.fromARGB(255, 216, 233, 247),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                               ),
                             validator: (value){
                                if(value!.isEmpty){
                                  return "Password is required";
                                }
                                return null;
                               },
                            ),
            
                             SizedBox(height: 25,),
                        
                             TextFormField(
                               decoration: InputDecoration(
                                labelText: "Contact Number",
                                hintText: "Enter your Phone-No", 
                                filled: true, 
                                fillColor: const Color.fromARGB(255, 216, 233, 247),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                               ),
                               validator: (value){
                                if(value!.isEmpty){
                                  return "Contact is required";
                                }
                                return null;
                               },
                            ),
                            SizedBox(height: 35,),
                            ElevatedButton(onPressed: (){myfunc();},style: ElevatedButton.styleFrom(minimumSize: Size(300, 55),backgroundColor: Colors.white), child: Text("Sign In",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 19),)
                            ),
                             SizedBox(height: 12,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.symmetric()),
                                                        Text("Already Have an account..!" ),
                                                        SizedBox(width: 4,),
                                                        TextButton(onPressed: (){Navigator.pushNamed(context, '/login');}, child: Text("Sign up", style: TextStyle(color: Colors.deepPurple),))
                              
                        ],
                       )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}