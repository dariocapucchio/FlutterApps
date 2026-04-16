import 'package:flutter/material.dart';
import '../modelos/item.dart';

// ignore: must_be_immutable
class ItemTile extends StatelessWidget {
  Item item;
  ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          // Imagen
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(item.imagePath, width: 280,)
          ),
          // Description
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              item.description,
              style: TextStyle(
                color: Colors.grey[600]
              ),
            ),
          ),
          // price +
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item.price,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                    color: Colors.pink[200]
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ),
              ],
            ),
          )
          // add to cart button

        ],
      ),
    );
  }
}