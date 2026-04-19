class FireStation {
  const FireStation({
    required this.id,
    required this.name,
    required this.phone,
    required this.addressText,
    required this.lat,
    required this.lng,
    required this.location,
    required this.isActive,
  });

  final int id;
  final String name;
  final String phone;
  final String addressText;
  final double lat;
  final double lng;
  final String location;
  final bool isActive;
}
