import 'package:flutter/material.dart';



class alart_dialog extends StatelessWidget {
  const alart_dialog({super.key});



  @override
  Widget build(BuildContext context) {



    void fuckU(){


      showDialog(

          context: context,

          barrierDismissible: false,

          builder: (context)=>AlertDialog(

        title: Text("fuck You Man"),
        content: Text("are you a motherchod? why you press long?"),
        actions: [

          TextButton(onPressed: (){

            Navigator.pop(context);

          }, child: Text("Yes I am")),
          // ElevatedButton(onPressed: (){
          //
          //   ScaffoldMessenger.of(context).showSnackBar(
          //
          //       SnackBar(content: Text("Submited"))
          //
          //
          //   );
          //
          // }, child: Text("Submit")),

        ],



      ));

    }




    void ShowDialog(){

      showDialog(context: context, builder: (context)=>AlertDialog(

        title: Text("This is title"),
        content: Text("Here you can write content"),
        actions: [

          TextButton(onPressed: (){

            Navigator.pop(context);

          }, child: Text("Cancle")),
          ElevatedButton(onPressed: (){

            ScaffoldMessenger.of(context).showSnackBar(

              SnackBar(content: Text("Submited"))


            );

          }, child: Text("Submit")),

        ],



      ));

    }

    void ShowDialogWithIcone(){

      showDialog(context: context, builder: (context)=>AlertDialog(

        title: Text("Install Block"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 20,),
                SizedBox(width: 5,),
                Text("Warning: Installation at Your Own Risk"),
              ],
              
            ),

            SizedBox(height: 15,),

            Text("By proceeding with the installation, you acknowledge that: The software may modify system files or settings. Data loss or instability could occur. You are solely responsible for any damages or issues that arise. If you are unsure, cancel now."),
          ],
          
        ),
        actions: [

          TextButton(onPressed: (){

            Navigator.pop(context);

          }, child: Text("Ok")),

        ],



      ));

    }

    void ShowDialogSimpleAlart(){

      showDialog(context: context, builder: (context)=>SimpleDialog(

        title: Text("This is title"),
        children: [

          SimpleDialogOption(
            child: Text("Option 1"),
            onPressed: (){
              ShowDialogWithIcone();
            },

          ),

          SimpleDialogOption(
            child: Text("Option 1"),
            onPressed: (){
              ShowDialog();
            },
          ),

        ],


      ));

    }

    void ShowBottomSheet() {


      showModalBottomSheet(context: context,

          backgroundColor: Colors.white.withOpacity(.8),
          barrierColor: Colors.black,
          //isDismissible: false,

          builder: (context)=> Container(

        child: Column(

          mainAxisSize: MainAxisSize.min,

          children: [
            SizedBox(height: 10,),
            Text("Choose Option",style: TextStyle(
              fontSize: 20,
            ),),

            SizedBox(height: 10,),
            
            ListTile(
              title: Text("Option-1"),
              onTap: (){
                //fuckU();
              },
              onLongPress: (){
                fuckU();
              },
              
            ),

            SizedBox(height: 10,),

            ListTile(
              title: Text("Option-2"),

            ),

            SizedBox(height: 10,),

            ListTile(
              title: Text("Option-2"),

            ),

            
          ],
        ),


      ));


    }
    
    
    return Scaffold(

      appBar: AppBar(

        title: Text("Alart"),
        backgroundColor: Colors.black26,
      ),
      
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: (){
              ShowDialog();

            }, child: Text("Show Alart")),

            ElevatedButton(onPressed: (){
              ShowDialogWithIcone();

            }, child: Text("Show Alart with icon")),
            ElevatedButton(onPressed: (){
              ShowDialogSimpleAlart();

            }, child: Text("Show Simple Alart")),

            ElevatedButton(onPressed: (){
              ShowBottomSheet();

            }, child: Text("Show Bottom Sheet"))


          ],


        ),
      ),


    );
  }


}
