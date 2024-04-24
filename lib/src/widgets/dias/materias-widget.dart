import 'package:flutter/material.dart';

class MateriasW extends StatelessWidget {
  final String value;
  

  const MateriasW({
    required this.value,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
     
        
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(''),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(height: 50),
        ],
      ),
    );
  }
}