import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class FadeIndexedStack extends StatefulWidget {
  const FadeIndexedStack({
    required this.index,
    required this.children,
    this.duration = const Duration(
      milliseconds: 250,
    ),
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.clipBehavior = Clip.hardEdge,
    this.sizing = StackFit.loose,
    super.key,
  });

  final int index;
  final List<Widget> children;
  final Duration duration;
  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final Clip clipBehavior;
  final StackFit sizing;

  @override
  FadeIndexedStackState createState() => FadeIndexedStackState();
}

class FadeIndexedStackState extends State<FadeIndexedStack>
    with SingleTickerProviderStateMixin {
  // late final AnimationController _controller =
  // AnimationController(vsync: this, duration: widget.duration);

  // @override
  // void didUpdateWidget(FadeIndexedStack oldWidget) {
  //   if (widget.index != oldWidget.index) {
  //     _controller.forward(from: 0);
  //   }
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void initState() {
  //   _controller.forward();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) => PageTransitionSwitcher(
    duration: widget.duration,
    transitionBuilder: (
        Widget child,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
        FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          fillColor: Theme.of(context).colorScheme.surface,
          child: child,
        ),
    child: IndexedStack(
      index: widget.index,
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      clipBehavior: widget.clipBehavior,
      sizing: widget.sizing,
      children: widget.children,
    ),
  );
}
