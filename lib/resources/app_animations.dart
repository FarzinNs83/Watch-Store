import 'package:flutter/widgets.dart';

class SendOtpAnimations extends StatefulWidget {
  final Widget child;

  const SendOtpAnimations({super.key, required this.child});

  @override
  State<SendOtpAnimations> createState() => _SendOtpAnimationsState();
}

class _SendOtpAnimationsState extends State<SendOtpAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController.drive(Tween(begin: 0, end: 1)),
      child: SlideTransition(
        position: animationController.drive(
          Tween(
            begin: Offset(-0.7, -0.1),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut)),
        ),
        child: widget.child,
      ),
    );
  }
}

class GetOtpAnimation extends StatefulWidget {
  final Widget child;

  const GetOtpAnimation({super.key, required this.child});

  @override
  State<GetOtpAnimation> createState() => _GetOtpAnimationState();
}

class _GetOtpAnimationState extends State<GetOtpAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _controller.drive(
        Tween<double>(
          begin: 0.4,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeInOut)),
      ),
      child: widget.child,
    );
  }
}
