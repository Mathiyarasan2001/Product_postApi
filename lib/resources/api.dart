import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/productmodel.dart';

Future<Product?> fetchProducts() async {
  const String apiUrl = 'https://my-store.in/v2/products/api/getProductsList';
  const Map<String, String> headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    "appid": "2IPbyrCUM7s5JZhnB9fxFAD6",
  };
  const Map<String, String> body = {"page": "1"};
  try {
    final http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return Product.fromJson(data);
    } else {
      print("Request failed with status:${response.statusCode}");
      return null;
    }
  } catch (e) {
    print("Error:$e");
    return null;
  }
}
