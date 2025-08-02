import 'package:flutter/material.dart';

class livetest extends StatelessWidget {
  const livetest({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController name = TextEditingController();
    TextEditingController age = TextEditingController();
    TextEditingController salary = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employe"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [

          SizedBox(height: 50,),


          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",

                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black26
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),

                // prefixIcon: Icon(
                //     Icons.phone,
                // ),
                // suffixIcon: Icon(
                //     Icons.check
                // ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: age,
              decoration: InputDecoration(
                  hintText: "Enter your age",
                  labelText: "Age",

                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black26
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),

                  // prefixIcon: Icon(
                  //     Icons.phone,
                  // ),
                  // suffixIcon: Icon(
                  //     Icons.check
                  // ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: salary,
              decoration: InputDecoration(
                  hintText: "Enter your Salary",
                  labelText: "Salary",

                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black26
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),

                  // prefixIcon: Icon(
                  //     Icons.phone,
                  // ),
                  // suffixIcon: Icon(
                  //     Icons.check
                  // ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
              ),
            ),
          ),
          SizedBox(height: 40,),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(onPressed: (){

              if(name.text.isEmpty || age.text.isEmpty || salary.text.isEmpty){

                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Please enter all value"))
                );

              }
              else
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Employe Added"))
                  );

                }

              // else if(phone.text.length < 11 || phone.text.length > 11){
              //   ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text("Please enter a Valid phone number"))
              //   );
              //}
              // else {
              //   if(pass.text.isEmpty){
              //
              //     ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(content: Text("Please enter Your Password"))
              //     );
              //   }
              //   else{
              //    /* ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(content: Text(phone.text))
              //     );
              //     ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(content: Text(pass.text))
              //     );*/
              //
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(
              //         content: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(phone.text),
              //             Text(pass.text),
              //           ],
              //         ),
              //         duration: Duration(seconds: 3),
              //       ),
              //     );
              //
              //   }
              // }
            }, child: Text("ADD EMPLOYE")),

          )
        ],
      ),
    );
  }
}
