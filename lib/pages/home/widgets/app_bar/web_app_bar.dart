import 'package:flutter/material.dart';
import 'package:flutterweb/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';



class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      iconTheme: IconThemeData(
        color: Colors.white, // Define a cor dos ícones
      ),
      title:Row(
        children: [
          Text(
            'Flutter',
            style: TextStyle(color: Colors.white,),
          ),
          const SizedBox(width:32),
          WebAppBarResponsiveContent(),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(width: 24,),
          OutlinedButton(
            onPressed: (){},
            child: Text('Fazer login',
              style: TextStyle(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
              side: BorderSide(width: 2.0, color: Colors.white),
              shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(18.0),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          const SizedBox(width: 8,),
          SizedBox(height: 38,
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2.0, color: Colors.white),
                shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(18.0),
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: (){},
              child: const Text('Cadastre-se', style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
