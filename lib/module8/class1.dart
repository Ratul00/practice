import 'package:flutter/material.dart';

class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController phone = TextEditingController();
    TextEditingController pass = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Input check"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: phone,
              decoration: InputDecoration(
                hintText: "Enter your number",
                labelText: "Phone Number",

                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red
                ),
                labelStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                ),

                prefixIcon: Icon(
                    Icons.phone,
                ),
                suffixIcon: Icon(
                    Icons.check
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "password",

                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                  ),
                  labelStyle: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                  ),

                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                      Icons.remove_red_eye
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
              ),
            ),
          ),
          
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(onPressed: (){

              if(phone.text.isEmpty){

                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Please enter a phone number"))
                );

              }
              // else if(phone.text.length < 11 || phone.text.length > 11){
              //   ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text("Please enter a Valid phone number"))
              //   );
              //}
              else {
                if(pass.text.isEmpty){

                  ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Please enter Your Password"))
                  );
                }
                else{
                 /* ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(phone.text))
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(pass.text))
                  );*/

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(phone.text),
                          Text(pass.text),
                        ],
                      ),
                      duration: Duration(seconds: 3),
                    ),
                  );



                }


              }

            }, child: Text("SUBMIT")),

          )

        ],

      ),

      

    );
  }
}
