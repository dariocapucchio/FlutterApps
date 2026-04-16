import 'package:flutter/material.dart';
import '../modelos/item.dart';
import 'package:belladona_app_v01/modelos/item.dart';
import 'package:belladona_app_v01/components/item_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Buscar'),
                Icon(Icons.search),
              ],
            ),
          ),
          // message
          
          // hot picks
          
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ofertas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //const SizedBox(height: 5),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Item item1 = Item('Pulsera Roma', '\$50.500', 'assets/PulseraRoma.jpg', 'Pulsera para personalizar de acero quirúrgico con cadena chata combinada con chapita.');
                return ItemTile(
                  item: item1,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}