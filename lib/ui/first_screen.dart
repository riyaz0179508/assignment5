import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class FirstScreen extends StatefulWidget {
   FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   Color _color= Colors.green;
   TextEditingController _emailController= TextEditingController();
   TextEditingController _ageController= TextEditingController();
   TextEditingController _phneController= TextEditingController();

   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final double _height= MediaQuery.of(context).size.height;
    final double _width= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("First Screen"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    Lottie.asset("assets/lottie/w.json"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Enter your email"
                            ),
                            validator: (val){
                              if(val!.isEmpty){
                                return "Field empty";
                              }
                            },
                          ),
                          TextFormField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Enter your age"
                            ),
                            validator: (val){
                              if(val!.length<5){
                                return "Can't be more than 5";
                              }else{
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            controller: _phneController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Enter your phone number"
                            ),
                            validator: (val){
                              if(val!.length<11){
                                return "Can't be more than 11";
                              }else{
                                return null;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                            onPressed: (){
                             if(_formKey.currentState!.validate()){
                                Navigator.pushNamed((context), "/second-screen");
                             }

                            },
                            child: Text("Check")
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FloatingActionButton(
                        child: Icon(Icons.add),
                          onPressed: (){}
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
