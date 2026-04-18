import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_items.freezed.dart';

@freezed
abstract class NavItem with _$NavItem {
  const factory NavItem({
    required String label,
    required IconData icon,
    required IconData activeIcon,
    required String route,
  }) = _NavItem;
}

final List<NavItem> navItems = [];
