import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/presentation/theme/theme.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.controller,
    required this.itemCount,
    super.key,
  });

  final PageController controller;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final bottomBarTheme = BottomBarThemeExtension.of(context);
    final hasCurrentLocation = context.read<WeatherViewBloc>().hasCurrentLocation;

    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              final selectness = Curves.easeOut.transform(
                max(0.0, 1.0 - ((controller.page ?? controller.initialPage) - index).abs()),
              );

              final dotColor = Color.lerp(bottomBarTheme.inActiveIndicatorColor,
                  bottomBarTheme.activeIndicatorColor, selectness)!;

              return GestureDetector(
                onTap: () {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Padding(
                  padding: index == 0 && hasCurrentLocation
                      ? bottomBarTheme.locationIconPadding
                      : bottomBarTheme.indicatorPadding,
                  child: Container(
                    width: bottomBarTheme.indicatorSize,
                    height: bottomBarTheme.indicatorSize,
                    decoration: BoxDecoration(
                      color: index == 0 && hasCurrentLocation ? null : dotColor,
                      shape: BoxShape.circle,
                    ),
                    child: index == 0 && hasCurrentLocation
                        ? Icon(
                            Icons.near_me,
                            color: dotColor,
                          )
                        : null,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
