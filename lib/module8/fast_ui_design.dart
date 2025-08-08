import 'package:flutter/material.dart';


class uidesign extends StatelessWidget {
  uidesign({super.key});

  final List<String> imageUrls = [
    "https://res.cloudinary.com/dtljonz0f/image/upload/c_auto,ar_1:1,w_3840,g_auto/f_auto/q_auto/v1/gc-v1/paris/3%20giorni%20a%20Parigi%20Tour%20Eiffel?_a=BAVAZGE70",
    "https://www.sunsiyam.com/media/qnfnzgmq/ssiv_general_04.jpg?width=782&height=521&mode=max", // different image for grid 2
    "https://www.investindubai.gov.ae/-/media/gathercontent/poi/b/burj-khalifa/fallback-image/burj-khalifa-det-3.jpg",
    "https://img-asset-01.visitbali.id/BoHVTzhUi_XxZW1b6L8d2BtRy-ZFyNyI4Y202l3yYoU/fill/650/450/no/0/aHR0cHM6Ly92aXNpdGJhbGkuaWQvaW1hZ2VzL2RhdGEvMjAxOS9PY3QvMDEvNWQ5MzE2ZWZjNTNlYmE2NjYuanBn.jpg"
  ];

  final List<String> place = [

    "Paris",
    "Maldives",
    "Dubai",
    "Bali",

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //
      //   title: Text("Ui Design"),
      //   backgroundColor: Colors.black26,
      // ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          //mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
        
            Stack(
              
              children: [
                
                Image.network("https://s3.mortarr.com/images/project_gallery_images/aqua-design-international-hotel-cerro-hospitality-design-rooftop-swimming-pool-design-ideas.jpeg"),
                Positioned(
        
                  bottom: 90,
                  left: 30,
                  child: Text(
        
                      "Explore the World",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
        
                    ),
        
                  ),
                ),
        
                Positioned(
                  bottom: 30,
                  left: 30,
        
                  child: Container(
                    width: 250,
        
                    decoration: BoxDecoration(
        
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
        
                    ),
                    child: TextField(
                      //textAlign: TextAlign.center,
        
                      decoration: InputDecoration(
        
                        prefixIcon: Icon(Icons.search),
                        hintText: "Sreach destination...",
                        hintStyle: TextStyle(
        
                          color: Colors.black.withOpacity(.5),
                          fontSize: 15,
        
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
        
                      ),
                    ),
                  ),
                )
        
        
              ],
              
            ),
        
            SizedBox(height: 20,),
            
        
        
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Top Destinations", style: TextStyle(
        
                  fontSize:20,
                  fontWeight: FontWeight.bold,
        
                ),),
          ),
        
            SizedBox(height: 15,),
        
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
        
                  child: GridView.builder(
        
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
        
                    padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        
                          crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3 / 2, // width : height
        
                      ),
        
                      itemCount: imageUrls.length,
        
                      itemBuilder: (context, index){
        
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                            ),
        
                          child: Stack(
        
                            children: [
        
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    imageUrls[index],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
        
                                  ),
                                ),
        
        
                              Positioned(
        
                                bottom: 10,
                                left: 10,
        
                                child: Text(place[index], style: TextStyle(
        
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
        
                                ),),
                              ),
        
        
                            ],
        
        
                          ),
        
                        );
        
                      }
        
                  ),
              ),
        
            SizedBox(height: 15,),
        
        
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Trending Packages", style: TextStyle(
        
                fontSize:20,
                fontWeight: FontWeight.bold,
        
              ),),
            ),
        
            SizedBox(height: 15,),
        
        
            ListView.builder(

                padding: EdgeInsets.zero,
        
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,

            itemBuilder: (context, index){
                  
                  return Padding(

                    padding: const EdgeInsets.only(left: 10, right: 10),

                    child: Card(

                      elevation: 4,

                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Container(
                            height: 140,
                            width: 150,

                            child: ClipRRect(

                              borderRadius: BorderRadius.only(

                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(2),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(2)


                              ),

                              child: Image.network(

                                imageUrls[index],
                                fit: BoxFit.cover,

                              ),
                            ),
                          ),
                          
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 15, left: 10),
                                child: Text("Romantic Paris Gateway",style: TextStyle(

                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,


                                ),),
                              ),
                              
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8, left: 10),
                                    child: Icon(Icons.access_time,

                                      size: 18,
                                      color: Colors.black.withOpacity(0.5),


                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 7, left: 5),
                                    child: Text("4 nights, 5 days", style: TextStyle(

                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold

                                    ),),
                                  )
                                  
                                  
                                ],
                                
                              ),


                              Row(

                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 15, left: 15),
                                    child: Text("\$799", style: TextStyle(

                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      fontSize: 20

                                    ),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 50, top: 18),
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue, // button color
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8), // rounded corners
                                          ),
                                        ),
                                        child: Text(

                                          "Book Now",
                                          style: TextStyle(
                                            fontSize: 11, // text size
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                  )


                                ],

                              )

                              
                              
                            ],
                            
                            
                          )
                          
                          

                        ],

                      ),


                    ),
                  );
                  
            })
        
            
          ],
        
          
          
        ),
      ),



    );
  }
}
