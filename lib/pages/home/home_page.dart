import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: constraint.maxWidth >= 800 ? Colors.red : Colors.blue,
          ),
        );
      }
    );
  }
}
