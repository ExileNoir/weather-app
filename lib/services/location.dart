import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  Future<void> getCurrentLocation() async {
    try {
      final Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      print('starts here');
      print(position.latitude);
      print(position.longitude);

      _latitude = position.latitude ?? 48.879060;
      _longitude = position.longitude ?? 2.463100;
    } catch (e) {
      print(e);
    }
  }

  double get longitude => _longitude;

  double get latitude => _latitude;
}
