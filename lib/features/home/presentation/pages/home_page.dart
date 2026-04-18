import 'package:fire_ping/core/shared/extensions/build_context_extension.dart';
import 'package:fire_ping/core/shared/utils/app_util.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(LucideIcons.map),
        actionsPadding: .only(right: 16),
        actions: [Icon(LucideIcons.user)],
      ),
      body: Center(
        child: IconButton.filled(
          onPressed: () {
            showSnackBar(context, content: 'Đang báo hoả');
          },
          icon: Icon(
            Icons.local_fire_department,
            size: context.width * .3,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(LucideIcons.list),
      ),
    );
  }
}
