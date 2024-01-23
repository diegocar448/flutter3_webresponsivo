import 'package:flutter/material.dart';



class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        final maxWidth = constraints.maxWidth;

        //de 1200 para cima é web, se for menor então será tablet
        if(maxWidth >= 1200){
          return AspectRatio(
              aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Image.network(
                      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=26h=650Sw=940',
                      fit: BoxFit.cover,
                    ),
                ),
                Positioned(
                    left: 50,
                    top: 50,
                    child:Card(
                      color: Colors.black,
                      elevation: 8,
                      child:Container(
                        width: 400,
                        height: 400,
                      ),
                    ),
                ),
              ],
            ),
          );
        }
        // Adicione um retorno para o caso em que a condição não é atendida
        return Container(); // Ou qualquer outro widget desejado

      }
    );
  }
}
