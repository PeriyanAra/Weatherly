import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weatherly/presentation/weather_view/view_models/weather_details_view_model.dart';
import 'package:weatherly/presentation/theme/theme.dart';

class WeatherDetailsContent extends StatelessWidget {
  const WeatherDetailsContent({
    super.key,
    required this.viewModel,
  });

  final WeatherDetailsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = WeatherlyTextThemeExtension.of(context);
    final weatherViewTheme = WeatherViewThemeExtension.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: 'https://openweathermap.org/img/wn/${viewModel.icon}@4x.png',
        ),
        Text(
          viewModel.city,
          style: textTheme.headline2,
        ),
        SizedBox(height: weatherViewTheme.smallHeightBox),
        Text(
          '${viewModel.currentTemp}°',
          style: textTheme.headline1.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: weatherViewTheme.largeHeightBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'H:${viewModel.highestTemp}°',
              style: textTheme.bodyText1,
            ),
            SizedBox(width: weatherViewTheme.mediumHeightBox),
            Text(
              'L:${viewModel.lowestTemp}°',
              style: textTheme.bodyText1,
            ),
          ],
        )
      ],
    );
  }
}
