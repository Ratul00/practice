// {
// "_id": "68b54f02dd287e3f18a27aa2",
// "ProductName": "sada",
// "ProductCode": 2323,
// "Img": "dfsdf",
// "Qty": 32432,
// "UnitPrice": 34242,
// "TotalPrice": 1110536544
// },

class ProductsModel {

  late String id;
  late String ProductName;
  late int ProductCode;
  late String Img;
  late int Qty;
  late int UnitPrice;
  late int TotalPrice;

  ProductsModel.fromjson(Map<String, dynamic> json){

    id = json["_id"];
    ProductName = json["ProductName"];
    ProductCode = json["ProductCode"];
    Img = json["Img"];
    Qty = json["Qty"];
    UnitPrice = json["UnitPrice"];
    TotalPrice = json["TotalPrice"];




  }

}