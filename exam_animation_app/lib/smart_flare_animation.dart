import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SmartFlareAnimation extends StatefulWidget {
  @override
  _SmartFlareAnimationState createState() => _SmartFlareAnimationState();
}

class _SmartFlareAnimationState extends State<SmartFlareAnimation> {
  static const double AnimationWidth = 295.0;
  static const double AnimationHeight = 251.0;

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AnimationWidth,
      height: AnimationHeight,
      child: GestureDetector(
          onTapUp: (tapInfo) {
            var localTouchPosition = (context.findRenderObject() as RenderBox)
                .globalToLocal(tapInfo.globalPosition);

            var topHalfTouched = localTouchPosition.dy < AnimationHeight / 2;
            var leftSideTouched = localTouchPosition.dx < AnimationWidth / 3;
            var rightSideTouched = localTouchPosition.dx < AnimationWidth / 3;
            var middletouched = !leftSideTouched && !rightSideTouched;

            if (leftSideTouched && rightSideTouched) {
              print('topleft');
            } else if (middletouched && topHalfTouched) {
              print('topmiddle');
            } else if (rightSideTouched && topHalfTouched) {
              print('topright');
            } else {
              if (isOpen) {
                print('bottom close');
              } else {
                print('bottom open');
              }
            }

            setState(() {
              isOpen = !isOpen;
            });
          },
          child: FlareActor('assets/button-animation.flr',
              animation: isOpen ? 'activate' : 'deactivate')),
    );
  }
}
