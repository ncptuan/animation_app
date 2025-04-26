import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedLine extends StatefulWidget {
  final double waveHeight;
  final Color waveColor;
  final double peakOffset;

  const AnimatedLine({
    super.key,
    this.waveHeight = 50.0, // Default wave height
    this.waveColor =
        const Color.fromARGB(255, 238, 245, 245), // Default wave color
    this.peakOffset = 0.0,
  });

  @override
  State<AnimatedLine> createState() => _AnimatedLineState();
}

class _AnimatedLineState extends State<AnimatedLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _lineAnimationController;

  @override
  void initState() {
    super.initState();
    _lineAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10), // Slower animation
    )..repeat();
  }

  @override
  void dispose() {
    _lineAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _lineAnimationController,
      builder: (context, child) {
        return CustomPaint(
          painter: LinePainter(
            _lineAnimationController.value,
            waveHeight: widget.waveHeight,
            waveColor: widget.waveColor,
            peakOffset: widget.peakOffset, // Pass peak offset to painter
          ),
          child: Container(),
        );
      },
    );
  }
}

class LinePainter extends CustomPainter {
  final double animationValue;
  final double waveHeight;
  final Color waveColor;
  final double peakOffset; // New field for peak offset

  LinePainter(
    this.animationValue, {
    required this.waveHeight,
    required this.waveColor,
    required this.peakOffset, // Initialize peak offset
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintFill = Paint()
      ..color = waveColor.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    final path = Path();
    final fillPath = Path();
    final waveLength = size.width; // Length of one wave cycle

    for (double x = 0; x <= size.width; x++) {
      double y = size.height / 2 +
          waveHeight *
              sin((x / waveLength) * 2 * pi +
                  animationValue * 2 * pi +
                  peakOffset); // Add peak offset
      if (x == 0) {
        path.moveTo(x, y);
        fillPath.moveTo(x, y);
      } else {
        path.lineTo(x, y);
        fillPath.lineTo(x, y);
      }
    }

    // Close the fill path to create the filled area
    fillPath.lineTo(size.width, size.height);
    fillPath.lineTo(0, size.height);
    fillPath.close();

    // Draw the filled area
    canvas.drawPath(fillPath, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint whenever animation value changes
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return Stack(
      children: [
        AnimatedLine(
          waveHeight: 90.0,
          waveColor: const Color.fromARGB(255, 199, 225, 225),
          peakOffset: random.nextDouble() * 2 * pi, // Random peak offset
        ),
        AnimatedLine(
          waveHeight: 100.0,
          waveColor: const Color.fromARGB(255, 200, 230, 230),
          peakOffset: random.nextDouble() * 2 * pi, // Random peak offset
        ),
        AnimatedLine(
          waveHeight: 150.0,
          waveColor: const Color.fromARGB(255, 180, 220, 220),
          peakOffset: random.nextDouble() * 2 * pi, // Random peak offset
        ),
      ],
    );
  }
}
