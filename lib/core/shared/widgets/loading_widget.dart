import 'package:fire_ping/core/shared/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({this.text, super.key});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: context.colors.onSurface.withValues(alpha: 0.5),
          ),
        ),
        Center(
          child: Container(
            padding: const .symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: context.colors.onSurface.withValues(alpha: 0.9),
              borderRadius: .circular(8),
            ),
            child: Column(
              spacing: 16,
              mainAxisSize: .min,
              children: [
                CircularProgressIndicator(
                  backgroundColor: context.colors.primaryContainer,
                ),
                if (text != null && text!.trim().isNotEmpty)
                  Text(
                    text!,
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: context.colors.onInverseSurface,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
