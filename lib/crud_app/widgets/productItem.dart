
import 'package:fast_flutter_project/crud_app/models/product.dart';
import 'package:fast_flutter_project/crud_app/screen/UpdateProduct.dart';
import 'package:fast_flutter_project/crud_app/utils/urls.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Product_item extends StatefulWidget {

  const Product_item({
    super.key, required this.product, required this.refreshProductList,
  });

  final ProductsModel product;
  final VoidCallback refreshProductList;

  @override
  State<Product_item> createState() => _Product_itemState();
}

class _Product_itemState extends State<Product_item> {


  bool _deleteProgress = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(



      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.product.Img),
      ),
      title: Text(widget.product.ProductName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Code: ${widget.product.ProductCode}"),

          Row(
            spacing: 16,
            children: [
              Text("Price: ${widget.product.UnitPrice}"),
              Text("quantity: ${widget.product.Qty}"),
            ],
          ),


        ],
      ),

      trailing: Visibility(
        visible: _deleteProgress == false,
        replacement: CircularProgressIndicator(),
        child: PopupMenuButton <option>(
          itemBuilder: (context){

            return [
              PopupMenuItem(
                  value: option.delete,
                  child: Text("Delete")
              ),
              PopupMenuItem(
                  value: option.update,
                  child: Text("Update")
              ),

            ];

          },
          onSelected: (option seletedOption){

            if(seletedOption == option.delete){

              _delete();

            }
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProduct(products: widget.product,)));
            }

          },
        ),
      ),

    );
  }

  Future<void> _delete() async {

    _deleteProgress = true;
    setState(() {});

    Uri uri = Uri.parse(Urls.deleteproductUrl(widget.product.id));
    Response response = await get(uri);

    if(response.statusCode == 200){

      widget.refreshProductList();

    }

    _deleteProgress = false;
    setState(() {});




  }
}


enum option {
  update,
  delete,

}