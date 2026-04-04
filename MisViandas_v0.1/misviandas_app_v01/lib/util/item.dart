import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {

  final String item;
  final bool estado;
  Function(bool?)? onChanged;
  Function()? Borrar;


  ItemLista({
    super.key, 
    required this.item, 
    required this.estado, 
    required this.onChanged,
    required this.Borrar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              value: estado, 
              onChanged: onChanged,
              activeColor: Colors.green,
            ),
            Text(
              item,
              style: TextStyle(
                decoration: estado ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            IconButton(
              color: Colors.red,
              onPressed: Borrar, 
              icon: Icon(Icons.delete),
            ),
            
          ],
        ),
      ),
    );
  }
}