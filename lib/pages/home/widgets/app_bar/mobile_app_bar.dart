import 'package:flutter/material.dart';



class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'Flutter',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
      ],
      iconTheme: IconThemeData(
        color: Colors.white, // Define a cor dos ícones
      ),
    );

  }
}
