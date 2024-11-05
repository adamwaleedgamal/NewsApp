import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String image;
  String title;
  String des;
  Item({required this.image,required this.des,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          Card(
            elevation: 10.0,
            child: Column(
              children: [
                Image.network(image),
                SizedBox(height: 20,),
                Container(
                    width: 300,
                    child: Text(title)),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                    child: Text(des))
              ],
            ),
          )
        ],
      ),
    );
  }
}
