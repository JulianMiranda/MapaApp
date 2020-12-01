import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapapp/bloc/mapa/mapa_bloc.dart';
import 'package:mapapp/bloc/mi_ubicacion/mi_ubicacion_bloc.dart';
import 'package:mapapp/pages/acceso_gps_page.dart';
import 'package:mapapp/pages/loading_page.dart';
import 'package:mapapp/pages/mapa_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [  
            BlocProvider(create: (_) => MiUbicacionBloc()),
            BlocProvider(create: (_) => MapaBloc()),
          ],
          child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: LoadingPage(),
        routes: {
          'mapa': ( _ ) => MapaPage(),
          'loading': ( _ ) => LoadingPage(),
          'acceso_gps': ( _ ) => AccesoGpsPage(),
        },
      ),
    );
  }
}