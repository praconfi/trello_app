import 'package:flutter/material.dart';

class ItemsColumn extends StatelessWidget {
  final String title;
  Widget items;
  ItemsColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          color: Color(0xFFcfcfcf),
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black87),
                ),
              ),
              child: Center(child: Text(title)),
            ),
            Expanded(
              child: items,
            ),
          ],
        ),
      ),
    );
  }
}
