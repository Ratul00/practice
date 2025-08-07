import 'package:flutter/material.dart';


class stackp extends StatelessWidget {
  const stackp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
        title: Text("Grid View"), backgroundColor: Colors.black26,
        ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Stack(

            children: [

              Container(
                height: 200,
                width: 150,
                color: Colors.yellow,
              ),

              Positioned(
                bottom: 100,
                right: 10,
                left: 10,
                child: Container(
                  height: 200,
                  width: 150,
                  color: Colors.green,
                ),
              ),

              Positioned(
                top: 100,
                right: 10,
                left: 10,
                child: Container(
                  height: 200,
                  width: 150,
                  color: Colors.black,
                ),
              )


            ],

          ),

          SizedBox(height: 20,),

          Stack(

            children: [

              CircleAvatar(

                radius: 50,
                backgroundImage: NetworkImage(
                    "https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-1/420432537_2174577002879860_2326149967953623203_n.jpg?stp=dst-jpg_s160x160_tt6&_nc_cat=106&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeGoSL3Fh1IHvFmziOu5AUnpeYHfLQAacnh5gd8tABpyeImS0Ps8F3fzt3KvdYab2T-Ei_nE4Wf_9I-AcLQ5il2d&_nc_ohc=2tdfa65feSIQ7kNvwGf8Rgu&_nc_oc=AdlS4F9x75E7w98SbfLW8Wt_omLhaCF7CrszjIhfJ7vXdBzRiR67kUaMJV3Jvg4w3wU&_nc_zt=24&_nc_ht=scontent.fdac138-2.fna&_nc_gid=JQs-lVUDzFSMBt3rIMdWuw&oh=00_AfXCny9iO2EoBTD2EeaZOhwzLuFeUmB54oCaf0UTJRQnsQ&oe=689ADEE5"

                ),

              ),

              Positioned(

                bottom: 10,
                right: 5,

                child: Container(

                  width: 15,
                  height: 15,

                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)

                  ),

                ),
              )

            ],


          )

        ],


      )

    );
  }
}
