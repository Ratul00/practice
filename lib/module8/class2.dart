import 'package:fast_flutter_project/module8/class1.dart';
import 'package:fast_flutter_project/module8/list_view.dart';
import 'package:flutter/material.dart';


class class2 extends StatelessWidget {
   class2({super.key});

  final formkey = GlobalKey<FormState>();

   TextEditingController phone = TextEditingController();
   TextEditingController name = TextEditingController();
  // TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Class 2 validator"),
        backgroundColor: Colors.black26,
      ),

      body: Column(
        children: [

          SizedBox(height: 20,),

          Center(
            child: CircleAvatar(

              radius: 100,
              backgroundImage: NetworkImage(
                "https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-6/503988465_2566611823676374_7827394901783169780_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeEvB6etrJr3aCKboja0DZlewy9xdHP7pUDDL3F0c_ulQBb1i_CFtmmI-LRelz-WRSdLKHfKJrSHam4RlO8ZcKb9&_nc_ohc=wFy1FXafsHgQ7kNvwGpJNBL&_nc_oc=AdmcLI1O-xeSF_n4Xsdxj0IV2pHSEOFG50McA6LmSUQoEAKQEPL8P62FTqh5-GKJfZw&_nc_zt=23&_nc_ht=scontent.fdac138-2.fna&_nc_gid=8GqHdLs7YvE1ZiBW7-RG0g&oh=00_AfVwgTD4UrcKMrWmJMyhbOF80Srqk-AokElHr79GYLAccw&oe=689AC2AB",),

            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Login from with Validator",

              style: TextStyle(
                fontSize: 30,
              ),

          ),

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(

                key: formkey,
                child: Column(

              children: [

                TextFormField(
                   controller: name,
                  decoration: InputDecoration(
                      hintText: "enter name",
                      labelText: "name ",
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

                SizedBox(height: 20,),

                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(

                    hintText: "Phone Number",
                    labelText: "phone",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty)
                      {
                        return "Please enter a Number";
                      }
                    else
                      {
                        return null;
                      }
                  },
                ),

                SizedBox(height: 20),

                TextFormField(
                 // controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "enter password",
                      labelText: "password ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),

                  validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "Please enter your password";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),

                SizedBox(height: 20,),
                
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){

                    if(formkey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Done"))

                        );

                        Navigator.push(context, MaterialPageRoute(builder: (context)=> listVew(num: phone.text, name: name.text,))); // page change here
                        
                      }

                  }, child: Text("Login"),),
                ),


              ],


            )),
          ),
          

        ],
      ),

    );
  }
}
