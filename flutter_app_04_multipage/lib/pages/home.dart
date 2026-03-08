import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  Map map_data = {};
  //Object? data = {};

  @override
  Widget build(BuildContext context) {
    
    map_data = map_data.isNotEmpty ? map_data : ModalRoute.of(context)?.settings.arguments as Map;
    //map_data = map_data.isNotEmpty ?  : data as Map;
    print(map_data);

    // fondo
    String bgImage = map_data['isDaytime'] ? 'day.png' : 'night.png';

    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                FilledButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      map_data = {
                        'location': result['location'],
                        'flag': result['flag'],
                        'time': result['time'],
                        'isDaytime': result['isDaytime'],
                      };
                    });
                  }, 
                  label: Text(
                    'Edit Loction',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      map_data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  map_data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}