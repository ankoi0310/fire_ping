extension DistanceFormatter on num {
  /// Format distance value
  /// If distance < 1000, returns as meters
  /// If distance >= 1000, converts to kilometers
  ///
  /// Example:
  /// 500.formatDistance() -> "500 m"
  /// 1500.formatDistance() -> "1.5 km"
  /// 1234.56.formatDistance() -> "1.23 km"
  String formatDistance() {
    if (this < 1000) {
      return '${toStringAsFixed(0)} m';
    } else {
      final km = this / 1000;
      return '${km.toStringAsFixed(2)} km';
    }
  }
}
