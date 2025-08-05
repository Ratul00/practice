import 'package:flutter/material.dart';

class listVew extends StatefulWidget {
  final name, num;
  const listVew({super.key, required this.name,required this.num});

  @override
  State<listVew> createState() => _listVewState();
}

class _listVewState extends State<listVew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("List View"),
        backgroundColor: Colors.black26,

      ),

      body: ListView.builder(

          itemCount: 50,
          itemBuilder: (context, index){

            return Card(

              shadowColor: Colors.green,
              elevation: 4,
              
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.blue, width: 1)
              ),
              
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete),
                title: Text(widget.name),
                subtitle: Text(widget.num),
              
              ),
            );


          }),






    );
  }
}
