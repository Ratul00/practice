import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  bool _addProductProgress = false;

  final GlobalKey<FormState> _fromKye = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Product")),

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
                    labelText: "Product Name",
                    hintText: "Product Name",
                  ),

                  validator: (String? value){

                    if(value?.trim().isEmpty ?? true){
                      return "Enter Value";
                    }
                    return null;
                  }
                ),
                TextFormField(
                  controller: _codeController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Product code",
                    hintText: "Product code",
                  ),
                    validator: (String? value){

                      if(value?.trim().isEmpty ?? true){
                        return "Enter Value";
                      }
                      return null;
                    }
                ),
                TextFormField(
                  controller: _quantityController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Product Quantity",
                    hintText: "Product Quantity",
                  ),
                    validator: (String? value){

                      if(value?.trim().isEmpty ?? true){
                        return "Enter Value";
                      }
                      return null;
                    }
                ),
                TextFormField(
                  controller: _priceController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Product Price",
                    hintText: "Product Price",
                  ),
                    validator: (String? value){

                      if(value?.trim().isEmpty ?? true){
                        return "Enter Value";
                      }
                      return null;
                    }
                ),
                TextFormField(
                  controller: _urlController,

                  decoration: InputDecoration(
                    labelText: "img URL",
                    hintText: "img URL",
                  ),
                    validator: (String? value){

                      if(value?.trim().isEmpty ?? true){
                        return "Enter Value";
                      }
                      return null;
                    }
                ),

                SizedBox(height: 20),

                Visibility(

                  visible: _addProductProgress == false,
                    replacement: Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: FilledButton(
                        onPressed: _onTapAddnewProductButton,
                        child: Text("Add new Product"))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onTapAddnewProductButton() async {

    if(_fromKye.currentState!.validate() == false){
      return;
    }

    _addProductProgress = true;
    setState(() {});

    //prepare Uri to request
    Uri uri = Uri.parse("http://35.73.30.144:2008/api/v1/CreateProduct");

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

        _clearTextFild();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));

      }
      else{

        String errorMssg = decodeJson['data'];

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMssg)));
      }
    }

    print(response.statusCode);
    print(response.body);

    _addProductProgress = false;
    setState(() {});


  }

  void _clearTextFild(){

    _nameController.clear();
    _priceController.clear();
    _quantityController.clear();
    _urlController.clear();
    _codeController.clear();

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
