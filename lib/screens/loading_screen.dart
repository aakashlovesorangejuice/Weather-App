
import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


//double latitude,longitude;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();
  void initState() {
    super.initState();
      getLocationData();
    }


    void getLocationData() async{
      var locData = await WeatherModel().getLocationWeather();
      Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(weatherData: locData,)));
    }
//      print(temp);
//      print(cityName);
//      print(idName);

//        print(data);

//        var longitude=jsonDecode(data)['coord']['lon'];
//        print(longitude);
//        var weatherDesc=jsonDecode(data)['weather'][0]['description'];
//        print(weatherDesc);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitFoldingCube(
            color: Colors.blue,
            size: 100.0,
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Built with ❤️ by Akash Mangal',
            style: TextStyle(
              color: Colors.white60,
              letterSpacing: 5.0,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
//        controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
      ),
      );
  }
}
