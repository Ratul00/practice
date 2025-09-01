
import 'dart:convert';

import 'package:fast_flutter_project/crud_app/models/product.dart';
import 'package:fast_flutter_project/crud_app/screen/AddProduct.dart';
import 'package:fast_flutter_project/crud_app/utils/urls.dart';
import 'package:fast_flutter_project/crud_app/widgets/productItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _reload = false;


  List<ProductsModel> _productList = [];

  @override
  void initState() {
    super.initState();
    _getProduct();
  }

  Future<void> _getProduct() async {

    _productList.clear();
    _reload = true;
    setState(() {});

    Uri uri = Uri.parse(Urls.getproductUrl);
    Response response = await get(uri);

    if(response.statusCode == 200){
      final decodeJson = jsonDecode(response.body);

      for(Map <String, dynamic> productJSON in decodeJson['data']){

        ProductsModel productsModel = ProductsModel.fromjson(productJSON);

        _productList.add(productsModel);



      }

    }

    _reload = false;

    setState(() {});


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Product List"),
        actions: [

          IconButton(onPressed: (){
            _getProduct();

          }, icon: Icon(Icons.refresh))


        ],
      ),

      body: Visibility(
        visible: _reload ==  false,
        replacement: Center(

          child: CircularProgressIndicator(),

        ),
        child: ListView.separated(

          itemCount: _productList.length,
          itemBuilder: (context,index) {

            return Product_item(product: _productList[index],
              refreshProductList: () {

              _getProduct();


            },);

          },

          separatorBuilder: (context, index) {

            return Divider(
            indent: 70,
            );
         },
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => AddProduct()));
          },
          child: Icon(Icons.add)),

    );
  }
}



