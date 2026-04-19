import 'package:fire_ping/config/router/app_router.dart';
import 'package:fire_ping/core/shared/extensions/build_context_extension.dart';
import 'package:fire_ping/core/shared/extensions/distance_extension.dart';
import 'package:fire_ping/core/shared/utils/app_util.dart';
import 'package:fire_ping/features/fire_station/presentation/blocs/nearest_fire_station_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      debugPrint(
        'Current Location: ${position.latitude}, ${position.longitude}',
      );
    } catch (e) {
      debugPrint('Error getting location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => context.go(AppRoute.map),
          child: const Icon(LucideIcons.map),
        ),
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(LucideIcons.user),
          ),
        ],
      ),
      body: BlocListener<NearestFireStationBloc, NearestFireStationState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              debugPrint('🔄 Loading nearest fire station...');
            },
            success: (nearestStations) {
              debugPrint(
                '✅ Found ${nearestStations.length} nearest stations',
              );
              if (nearestStations.isNotEmpty) {
                final nearest = nearestStations.first;
                debugPrint('📍 Nearest Station: ${nearest.name}');
                debugPrint(
                  '📏 Distance: ${nearest.distance.formatDistance()}',
                );
                showSnackBar(
                  context,
                  content:
                      'Found: ${nearest.name}\n'
                      'Distance: ${nearest.distance.formatDistance()}',
                );
              }
            },
            failure: (message) {
              debugPrint('❌ Error: $message');
              showSnackBar(context, content: 'Error: $message');
            },
          );
        },
        child: Center(
          child: IconButton.filled(
            onPressed: () {
              if (_currentLocation != null) {
                debugPrint('🔥 Fire button clicked!');
                debugPrint(
                  'Finding nearest from: ${_currentLocation!.latitude}, ${_currentLocation!.longitude}',
                );
                context.read<NearestFireStationBloc>().add(
                  NearestFireStationEvent.findNearest(
                    lat: _currentLocation!.latitude,
                    lng: _currentLocation!.longitude,
                  ),
                );
              } else {
                showSnackBar(
                  context,
                  content: 'Getting your location...',
                );
                _getCurrentLocation();
              }
            },
            icon: Icon(
              Icons.local_fire_department,
              size: context.width * .3,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(LucideIcons.list),
      ),
    );
  }
}
