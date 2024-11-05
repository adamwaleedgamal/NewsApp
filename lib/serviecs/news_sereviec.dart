import 'package:dio/dio.dart';
import 'package:news/models/new_model.dart';
class news_services
{
   static Dio dio=Dio();
   static Future<news_model> get()async
   {
     final res=await dio.get("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a57b60887b7a4f148460e0cb5bd20f0a");
     return news_model.fromjson(res.data);
   }
}