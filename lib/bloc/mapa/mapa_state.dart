part of 'mapa_bloc.dart';

@immutable
class MapaState {
  final bool mapaListo;
  final bool seguirUbicacion;
  final bool dibujarRecorrido;
  final Map<String, Polyline> polylines;
  final LatLng ubicacionCentral;

  MapaState(
      {this.mapaListo = false,
      this.dibujarRecorrido = false,
      this.seguirUbicacion = false,
      this.ubicacionCentral,
      Map<String, Polyline> polylines})
      : this.polylines = polylines ?? new Map();

  MapaState copyWith(
          {bool mapaListo,
          bool dibujarRecorrido,
          bool seguirUbicacion,
          final LatLng ubicacionCentral,
          Map<String, Polyline> polylines}) =>
      MapaState(
        mapaListo: mapaListo ?? this.mapaListo,
        seguirUbicacion: seguirUbicacion ?? this.seguirUbicacion,
        polylines: polylines ?? this.polylines,
        dibujarRecorrido: dibujarRecorrido ?? this.dibujarRecorrido,
        ubicacionCentral: ubicacionCentral ?? this.ubicacionCentral,
      );
}
