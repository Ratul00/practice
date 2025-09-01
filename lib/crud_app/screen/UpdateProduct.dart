import 'dart:convert';

import 'package:fast_flutter_project/crud_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:fast_flutter_project/crud_app/utils/urls.dart';


class UpdateProduct extends StatefulWidget {
  const UpdateProduct({super.key, required this.products});

  final ProductsModel products;

  @override
  State<UpdateProduct> createState() => _UpdateProduct();
}

class _UpdateProduct extends State<UpdateProduct> {

  bool _updateProductProgress = false;

  final GlobalKey <FormState> _fromKye = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.products.ProductName;
    _codeController.text = widget.products.ProductCode.toString();
    _quantityController.text = widget.products.Qty.toString();
    _priceController.text = widget.products.UnitPrice.toString();
    _urlController.text = widget.products.Img;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Upadte Product"),),

      body: SingleChildScrollView(
        child: Form(
          key: _fromKye,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
        
              children: [
                TextFormField(

                  controller: _nameController,

                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Upadte Product Name",
                    hintText: "Upadte Product Name",
        
                  ),
        
                ),
                TextFormField(
                  controller: _codeController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Upadte Product code",
                    hintText: "Upadte Product code"
        
                  ),
        
                ),
                TextFormField(
                  controller: _quantityController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Upadte Product Quantity",
                    hintText: "Upadte Product Quantity"
        
                  ),
        
                ),
                TextFormField(
                  controller: _priceController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Upadte Product Price",
                    hintText: "Upadte Product Price"
        
                  ),
        
                ),
                TextFormField(

                  controller: _urlController,
        
                  decoration: InputDecoration(
                    labelText: "Upadte img URL",
                    hintText: "Upadte img URL"
        
                  ),
        
                ),
        
                SizedBox(height: 20,),
        
                Visibility(
                  visible: _updateProductProgress == false,
                  replacement: Center(
                    child: CircularProgressIndicator(),
                  ),
                  child: FilledButton(
                      onPressed: _update,
                      child: Text("Update Product")),
                ),
        
              ],
        
            ),
          ),
        ),
      ),

      
      
    );
  }

  Future<void> _update() async {

    if(_fromKye.currentState!.validate() == false){
      return;
    }

    _updateProductProgress = true;
    setState(() {});

    //prepare Uri to request
    Uri uri = Uri.parse(Urls.updateproductUrl(widget.products.id));

    //prepare Data to send

    int totalPrice = int.parse(_quantityController.text) * int.parse(_priceController.text);

    Map<String, dynamic> requstBody = {
      "ProductName": _nameController.text,
      "ProductCode": int.parse(_codeController.text),
      "Img": _urlController.text,
      "Qty": int.parse(_quantityController.text),
      "UnitPrice": int.parse(_priceController.text),
      "TotalPrice": totalPrice,
    };

    //request with Data

    Response response = await post(
        uri,
        headers: {
          'Content-Type': 'application/json'
        },
        body: jsonEncode(requstBody));

    if(response.statusCode == 200){
      final decodeJson = jsonDecode(response.body);
      if(decodeJson['status'] == 'success'){

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));

      }
      else{

        String errorMssg = decodeJson['data'];

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMssg)));
      }
    }

    // print(response.statusCode);
    // print(response.body);

    _updateProductProgress = false;
    setState(() {});


  }


  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    _urlController.dispose();
    super.dispose();
  }


}
