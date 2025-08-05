import 'package:flutter/material.dart';

class livetest extends StatelessWidget {
  const livetest({super.key});

  @override
  Widget build(BuildContext context) {

    final formkey = GlobalKey<FormState>();

    // its working without TextEditingController

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employe"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [

          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(

                key: formkey,
                child: Column(

                  children: [

                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty)
                        {
                          return "Please enter your name";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 20),

                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter your Age",
                          labelText: "Age ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),

                      validator: (value){
                        if(value == null || value.isEmpty)
                        {
                          return "Please enter your age";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 20),

                    TextFormField(

                      decoration: InputDecoration(
                          hintText: "Enter your Salary",
                          labelText: "Salary ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),

                      validator: (value){
                        if(value == null || value.isEmpty)
                        {
                          return "Please enter your salary";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 30,),

                    SizedBox(
                      width: 200,
                      child: ElevatedButton(onPressed: (){

                        if(formkey.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Employe Added"))
                          );
                        }

                      }, child: Text("Add Employe"),),
                    ),

                  ],

                )),
          ),

        ],
      ),
    );
  }
}
