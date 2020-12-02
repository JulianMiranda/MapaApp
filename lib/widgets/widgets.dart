import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapapp/bloc/busqueda/busqueda_bloc.dart';
import 'package:mapapp/bloc/mapa/mapa_bloc.dart';
import 'package:mapapp/bloc/mi_ubicacion/mi_ubicacion_bloc.dart';
import 'package:mapapp/helpers/helpers.dart';
import 'package:mapapp/models/search_result.dart';
import 'package:mapapp/search/search_destination.dart';
import 'package:mapapp/services/traffic_service.dart';
import 'package:polyline/polyline.dart' as Poly;


part 'btn_mi_ruta.dart';
part 'btn_ubicacion.dart';
part 'btn_seguir_ubicacion.dart';
part 'marcador_manual.dart';
part 'searchbar.dart';