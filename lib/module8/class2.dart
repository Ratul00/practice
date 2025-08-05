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

          Center(
            child: Image.network(

              "https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-6/420432537_2174577002879860_2326149967953623203_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGoSL3Fh1IHvFmziOu5AUnpeYHfLQAacnh5gd8tABpyeImS0Ps8F3fzt3KvdYab2T-Ei_nE4Wf_9I-AcLQ5il2d&_nc_ohc=XTv0rpJgr_oQ7kNvwGdMgTt&_nc_oc=AdmRXd5KadnKZL5fz9ouy8N-2MHwNxilnlYZRhuk5PEjeIJA7Th44Q3pFwbkQf4Oucc&_nc_zt=23&_nc_ht=scontent.fdac138-2.fna&_nc_gid=jUA-WZht7SNL5VbzG84rAw&oh=00_AfRE15ZAAIIEc8-FcZI3AxdrH-jtPR-GcRHPUetwfWaOcg&oe=68926727",

              height: 200,
              width: 200,

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

                SizedBox(height: 10,),
                
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
