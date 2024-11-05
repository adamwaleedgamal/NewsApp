import 'package:news/serviecs/news_sereviec.dart';

class news_model
{
  List<dynamic> data;
  news_model({required this.data});
  factory news_model.fromjson(Map<String,dynamic> json)
  {
    List d=json["articles"];
    return news_model(data: d);
  }
}