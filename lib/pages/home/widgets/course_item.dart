
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=26h=650Sw=940',
          fit: BoxFit.fitWidth,
          height: 50,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                minFontSize: 12,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        AutoSizeText(
          'Diego',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'R\$80,80',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
