import 'package:flutter/material.dart';
import 'package:news/components/item.dart';
import 'package:news/provider/new_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<new_provider>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: p.o?.data.length,
                itemBuilder: (context, index) {
                  p.getall();
                 return Item(image:p.o?.data[index]["urlToImage"] , des: p.o?.data[index]["description"], title: p.o?.data[index]["title"]);
                },
            ),
          )
        ],
      ),
    );
  }
}
