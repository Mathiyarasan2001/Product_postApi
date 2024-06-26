 class Product{
  final bool success;
  final List<ProductItem>list;
  final String msg;

  Product({required this.success,required this.list,required this.msg});
  factory Product.fromJson(Map<String,dynamic>json){
    return Product(
      success:json["success"],
      list:List<ProductItem>.from(json["list"].map((item)=> ProductItem.fromJson(item))),
      msg:json["msg"],
    );
  }
}

class ProductItem{
  final String title;
  final int price;
  final String image;
  final String type;

  ProductItem({
    required this.title,required this.price,required this.image,required this.type
});

  factory ProductItem.fromJson(Map<String,dynamic>json){
    return ProductItem(title: json["title"], price: json["price"], image:json["image"], type: json["type"]);
  }
}