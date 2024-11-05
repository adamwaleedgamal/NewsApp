import 'package:flutter/material.dart';
import 'package:news/models/new_model.dart';
import 'package:news/serviecs/news_sereviec.dart';

class new_provider extends ChangeNotifier
{
  news_model? o;
  Future<void> getall()async
  {
    o=await news_services.get();
    notifyListeners();
  }
}