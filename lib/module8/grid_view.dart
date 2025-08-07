import 'package:flutter/material.dart';



class gridview extends StatelessWidget {
  const gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Grid View"),
        backgroundColor: Colors.black26,

      ),
    // body: GridView.count(
    //
    //     crossAxisCount: 3,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //
    //
    //   children: List.generate(10, (index) {
    //
    //     return Card(
    //
    //       shadowColor: Colors.green,
    //       elevation: 10,
    //
    //       shape: RoundedRectangleBorder(
    //
    //         borderRadius: BorderRadius.circular(25),
    //        // side: BorderSide(color: Colors.black26, width: 1)
    //       ),
    //
    //       color: Colors.red,
    //       child: Column(
    //
    //         mainAxisAlignment: MainAxisAlignment.center,
    //
    //         children: [
    //
    //           Icon(Icons.phone_android, size: 50, color: Colors.white,),
    //           SizedBox(height: 10,),
    //           Text("Cash out", style: TextStyle(color: Colors.white, fontSize: 15),),
    //         ],
    //
    //       ),
    //     );
    //
    //   }),
    //
    //
    //
    // ),

      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),

        itemCount: 20,
        itemBuilder: (context, index){

          return Card(

                    shadowColor: Colors.green,
                    elevation: 10,

                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(25),
                     // side: BorderSide(color: Colors.black26, width: 1)
                    ),

                    color: Colors.red,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        CircleAvatar(

                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-6/503988465_2566611823676374_7827394901783169780_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeEvB6etrJr3aCKboja0DZlewy9xdHP7pUDDL3F0c_ulQBb1i_CFtmmI-LRelz-WRSdLKHfKJrSHam4RlO8ZcKb9&_nc_ohc=wFy1FXafsHgQ7kNvwGpJNBL&_nc_oc=AdmcLI1O-xeSF_n4Xsdxj0IV2pHSEOFG50McA6LmSUQoEAKQEPL8P62FTqh5-GKJfZw&_nc_zt=23&_nc_ht=scontent.fdac138-2.fna&_nc_gid=8GqHdLs7YvE1ZiBW7-RG0g&oh=00_AfVwgTD4UrcKMrWmJMyhbOF80Srqk-AokElHr79GYLAccw&oe=689AC2AB",),

                        ),
                        SizedBox(height: 10,),
                        Text("Ratul Hossain Sadi", style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],

                    ),
          );

        }


    ),



    );
  }
}
