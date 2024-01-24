import 'package:flutter/material.dart';

class CustomSearchField  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(color:Colors.white),
          hintText: 'Faça alguma busca aqui',
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
        ),//decoration: Input,
    );
  }
}
