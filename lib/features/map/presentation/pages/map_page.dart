import 'package:fire_ping/features/fire_station/domain/entities/fire_station.dart';
import 'package:fire_ping/features/fire_station/domain/entities/nearest_fire_station.dart';
import 'package:fire_ping/features/fire_station/presentation/blocs/fire_station_bloc.dart';
import 'package:fire_ping/features/fire_station/presentation/blocs/nearest_fire_station_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final MapController _mapController = MapController();
  LatLng? _currentLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(),
      );
      setState(() {
        _currentLocation = LatLng(
          position.latitude,
          position.longitude,
        );
      });
    } catch (e) {
      debugPrint('Error getting location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fire Stations Map')),
      body: BlocBuilder<FireStationBloc, FireStationState>(
        builder: (context, fireStationState) {
          return fireStationState.when(
            initial: () =>
                const Center(child: CircularProgressIndicator()),
            loading: () =>
                const Center(child: CircularProgressIndicator()),
            success: (fireStations) {
              final markers = fireStations
                  .map(
                    (station) => Marker(
                      point: LatLng(station.lat, station.lng),
                      child: GestureDetector(
                        onTap: () async {
                          await _showStationDetails(station);
                        },
                        child: Icon(
                          Icons.local_fire_department,
                          color: station.isActive
                              ? Colors.red
                              : Colors.grey,
                          size: 32,
                        ),
                      ),
                    ),
                  )
                  .toList();

              // Add current location marker
              if (_currentLocation != null) {
                markers.add(
                  Marker(
                    point: _currentLocation!,
                    child: const Icon(
                      Icons.my_location,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ),
                );
              }

              return Stack(
                children: [
                  FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter:
                          _currentLocation ??
                          const LatLng(10.8231, 106.6297),
                      initialZoom: 12,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png',
                      ),
                      MarkerLayer(markers: markers),
                    ],
                  ),
                  // Fire button
                  Positioned(
                    bottom: 32,
                    right: 16,
                    child:
                        BlocListener<
                          NearestFireStationBloc,
                          NearestFireStationState
                        >(
                          listener: (context, state) async {
                            await state.whenOrNull(
                              success: (nearestStations) async {
                                if (nearestStations.isNotEmpty) {
                                  final nearest =
                                      nearestStations.first;
                                  await _showNearestStation(nearest);
                                }
                              },
                              failure: (message) {
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(
                                  SnackBar(
                                    content: Text('Error: $message'),
                                  ),
                                );
                              },
                            );
                          },
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () async {
                              if (_currentLocation != null) {
                                context
                                    .read<NearestFireStationBloc>()
                                    .add(
                                      NearestFireStationEvent.findNearest(
                                        lat: _currentLocation!
                                            .latitude,
                                        lng: _currentLocation!
                                            .longitude,
                                      ),
                                    );
                              } else {
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Getting your location...',
                                    ),
                                  ),
                                );
                                await _getCurrentLocation();
                              }
                            },
                            child: const Icon(
                              Icons.local_fire_department,
                            ),
                          ),
                        ),
                  ),
                ],
              );
            },
            failure: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text('Error: $message'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<FireStationBloc>().add(
                        const FireStationEvent.fetchFireStations(),
                      );
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showStationDetails(FireStation station) async {
    await showModalBottomSheet<dynamic>(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              station.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text('Phone: ${station.phone}'),
            const SizedBox(height: 8),
            Text('Address: ${station.addressText}'),
            const SizedBox(height: 8),
            Text(
              'Status: ${station.isActive ? "Active" : "Inactive"}',
              style: TextStyle(
                color: station.isActive ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showNearestStation(NearestFireStation station) async {
    await showModalBottomSheet<dynamic>(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '🚒 Nearest Fire Station',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              station.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Distance: ${station.distance.toStringAsFixed(2)} km',
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              label: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }
}
