import 'package:belladona_app_v01/modelos/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../modelos/item.dart';
//import '../components/item_tile.dart';
//import 'package:belladona_app_v01/modelos/item.dart';
import 'package:belladona_app_v01/components/item_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  
  void addItemToCart(Item item) {
    Provider.of<Cart>(context, listen: false).addItemToCart(item);

    // algo paso
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('Agregado!'),
        content: Text('Mira tu carrito!!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (
      builder: (context, value, child) => Center(
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
                  Item item1 = value.getItemList()[index];
                  return ItemTile(
                    item: item1,
                    onTap: () => addItemToCart(item1),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}