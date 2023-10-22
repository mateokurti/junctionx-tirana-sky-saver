import 'package:flutter/material.dart';
import 'package:skysaver/consts.dart';

class ShadowCard extends StatelessWidget {
  const ShadowCard({
    required this.child,
    this.color,
    this.margin = const EdgeInsets.all(16),
    this.onTap,
    this.onLongPress,
    super.key,
  });

  final Widget child;
  final Color? color;
  final EdgeInsets? margin;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.withOpacity(0.5)
                  : Colors.black26.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: -4,
              blurStyle: BlurStyle.outer,
              offset: const Offset(0.1, 0.1),
            ),
          ],
        ),
        child: Material(
          borderRadius: BorderRadius.circular(borderRadius),
          child: InkWell(
            borderRadius: BorderRadius.circular(borderRadius),
            onTap: onTap,
            onLongPress: onLongPress,
            child: Ink(
              decoration: BoxDecoration(
                color: color ?? Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: child,
            ),
          ),
        ),
      );
}
