import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WidgetProvider{

  static Widget getLocation(){

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: const [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Pickup Location"),
                subtitle: Text("Description of address"),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Drop Location"),
                subtitle: Text("Description of address"),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ),
      ],
    );
  }

  static Widget getRowWidget(String startLabel,String endLabel) {
    return Row(
      children: [
        Text(startLabel,style: const TextStyle(color: Colors.grey),),
        const Spacer(),
        Text(endLabel,style: const TextStyle(color: Colors.grey),),
      ],
    );
  }

  static Widget getColumn(String title){

    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
        const Text("Details",style: TextStyle(color: Colors.grey),),
        // ListTile(
        //   contentPadding: EdgeInsets.zero,
        //   visualDensity: const VisualDensity(vertical: -4),
        //   title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
        //   subtitle: const Text("Details"),
        // ),
        const SizedBox(height: 5,),
        const Text("Estimated time of Delivery"),
      ],
    );
  }
  static ButtonStyle emptyButtonStyle(){
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      side: const BorderSide(color: Colors.black),
    );
  }
  static ButtonStyle fullButtonStyle(){
    return ElevatedButton.styleFrom(backgroundColor: Colors.black);
  }
}