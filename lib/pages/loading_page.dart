import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as Geolocator;
import 'package:permission_handler/permission_handler.dart';

import 'package:mapapp/helpers/helpers.dart';
import 'package:mapapp/pages/acceso_gps_page.dart';
import 'package:mapapp/pages/mapa_page.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with WidgetsBindingObserver {

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    
    if (state == AppLifecycleState.resumed) {
      if (await Geolocator.isLocationServiceEnabled()) {
         Navigator.pushReplacement(
          context, navegarMapaFadeIn(context, MapaPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: chckGpsAndLocation(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data));
          } else {
            return Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
        },
      ),
    );
  }

  Future chckGpsAndLocation(BuildContext context) async {
    final permisoGps = await Permission.location.isGranted;
    final gpsActivo = await Geolocator.isLocationServiceEnabled();
    if (permisoGps && gpsActivo) {
      Navigator.pushReplacement(
          context, navegarMapaFadeIn(context, MapaPage()));
      return '';
    } else if (!permisoGps) {
      Navigator.pushReplacement(
          context, navegarMapaFadeIn(context, AccesoGpsPage()));
      return 'Es necesario permisos de Gps';
    } else {
      return 'Active Gps';
    }

    //Navigator.pushReplacement(context, navegarMapaFadeIn(context, AccesoGpsPage()));
    //
  }
}