import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';
import 'package:location/location.dart';

class PlaygroundMapView extends StatefulWidget {
  final List<Playground> playgrounds;

  const PlaygroundMapView({super.key, required this.playgrounds});

  @override
  State<PlaygroundMapView> createState() => _PlaygroundMapViewState();
}

class _PlaygroundMapViewState extends State<PlaygroundMapView> {
  final Location location = Location();
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(52.120514, 11.627634),
          initialZoom: 12,
        ),
        mapController: mapController,
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            rotate: true,
            markers: [
              Marker(
                point: const LatLng(52.120514, 11.627634),
                width: 50,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    print('Marker tapped');
                  },
                  onLongPress: () {
                    print('Marker long pressed');
                  },
                  child: const Stack(children: [
                    Icon(
                      Icons.place,
                      size: 50,
                      color: Colors.red,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.check_circle, color: Colors.green)),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () async {
          var permissionStatus = await location.hasPermission();
          if (permissionStatus == PermissionStatus.denied) {
            permissionStatus = await location.requestPermission();
          }
          if (permissionStatus == PermissionStatus.granted ||
              permissionStatus == PermissionStatus.grantedLimited) {
            await moveMapToLocation();
          }
        },
        child: const Icon(Icons.my_location),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  moveMapToLocation() async {
    final loc = await location.getLocation();
    mapController.move(LatLng(loc.latitude!, loc.longitude!), 18);
  }
}
