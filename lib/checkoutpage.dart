import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class check_out extends StatelessWidget {
  const check_out({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey=GlobalKey<FormState>();
    checkout(){
    if(formkey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("🎉 Order placed successfully!..!",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.greenAccent,
        duration: Duration(seconds: 3),)
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Something went wrong",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        duration: Duration(seconds: 3),)
      );
    }
    }
    return Scaffold(
      body: Container(
     decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue.shade700,Colors.tealAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)
        ),
        child: Center(
          child: Form(
            key: formkey,
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
            
                child: Column(  
                  children: [
                    SizedBox(height: 50,),
            
                TextFormField(
                  decoration: InputDecoration(
                            label: Text("Fullname",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                            hint: Text("enter your Fullname"),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "This field is Reqiured";
                            }
                            return null;
                          },
                ),
            
                SizedBox(height: 25,),
                
                TextFormField(
                  decoration: InputDecoration(
                            label: Text("Adress",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                            hint: Text("enter your Adress"),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "This Field is Required";
                            }
                            return null;
                          },
                ),
                SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                            label: Text("Phone No",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                            hint: Text("enter your Phone number"),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "This Field is Required";
                            }
                            return null;
                          },
                ),
                 SizedBox(height: 40,),
                ElevatedButton(onPressed: (){checkout();},style: ElevatedButton.styleFrom(minimumSize: Size(500, 60),backgroundColor: Colors.blue), 
                child: Text("Place Order",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),))
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}