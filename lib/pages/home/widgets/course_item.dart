
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=26h=650Sw=940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Text(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        Text(
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
