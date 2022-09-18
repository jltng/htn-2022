import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
        color: Color(0xffe7cef0),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // bottom right shadow
          BoxShadow(
            color: Color(0xff7f31a7),
            blurRadius: 15,
            offset: Offset(5, 5),
          ),

          // top left shadow
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
      ),
    );
  }
}