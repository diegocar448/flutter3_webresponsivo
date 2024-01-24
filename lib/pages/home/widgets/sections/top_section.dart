import 'package:flutter/material.dart';
import 'package:flutterweb/pages/home/widgets/custom_search_field.dart';



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
                  aspectRatio: 3.4,
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
                        padding: const EdgeInsets.all(22),
                        width: 450,
                        child: Column(
                          children: [
                            const Text(
                              'Flutter Web e Mobile Layout',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text(
                              'Layout Flutter para telas de notebooks e tablets, com responsibidade total, mantendo o layout para varios tamanhos de telas',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16,),
                            CustomSearchField()
                          ],
                        ),
                      )
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
