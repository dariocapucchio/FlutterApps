import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorlTime {

  String location;    // La ubicacion que se muestra en la UI
  String flag;        // url del icono de la bandera
  String url;         // url para la hora
  String time;        // La hora en esa ubicacion

  WorlTime({ this.location = 'loading', this.flag = 'loading', this.url = 'loading', this.time = 'loading' });

  Future<void> getTime() async {
    
    try {
      Response response = await get(
        Uri.parse('https://time.now/developer/api/timezone/$url')
      );
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // create a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
    
      //time = now.toString();
      time = DateFormat.jm().format(now);
    } 
    catch (e) {
      print('Error: $e');
      time = 'no data';
    }
    
  }

}