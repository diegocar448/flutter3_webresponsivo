import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildAdvantages(String title, String subtitle){
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color:Colors.white,
              size:50,
            ),
            const SizedBox(width:8),
            Column(
              children: [
                Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white)
                ),
              ],
            ),
          ],
        );
    }


    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 7),
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey,),
        )
      ),
      child: Wrap(
        //espaçamento para deixar todos iguais
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing:8,
        children: [
          buildAdvantages('+85000 Testes', 'Didática Garantida'),
          buildAdvantages('+85000 Testes', 'Didática Garantida'),
          buildAdvantages('+85000 Testes', 'Didática Garantida'),
        ],
      ),
    );
  }
}
