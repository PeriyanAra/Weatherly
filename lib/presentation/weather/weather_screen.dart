import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/core/di/di.dart';
import 'package:weatherly/presentation/common/widgets/weatherly_error_content.dart';
import 'package:weatherly/presentation/common/widgets/weatherly_loader.dart';
import 'package:weatherly/presentation/common/widgets/weatherly_system_toast.dart';
import 'package:weatherly/presentation/theme/theme.dart';
import 'package:weatherly/presentation/weather/bloc/weather_screen_bloc.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';
import 'package:weatherly/presentation/weather_view/view_models/coordinate_view_model.dart';
import 'package:weatherly/presentation/weather_view/widgets/weather_details_content.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    required this.coordinate,
    super.key,
  });

  final CoordinateViewModel coordinate;

  @override
  Widget build(BuildContext context) {
    final colorTheme = WeatherlyColorThemeExtension.of(context);

    return BlocProvider.value(
      value: inject<WeatherScreenBloc>()..add(WeatherScreenEvent.getData(coordinate: coordinate)),
      child: BlocConsumer<WeatherScreenBloc, WeatherScreenState>(
        listener: (BuildContext context, WeatherScreenState state) {
          if (state is WeatherScreenLoadedState &&
              state.errorMessage != null &&
              state.errorMessage!.isNotEmpty) {
            Future.delayed(
              const Duration(milliseconds: 500),
              () {
                WeatherlySystemToast.showToast(
                  context: context,
                  text: state.errorMessage!,
                  style: WeatherlySystemToastStyle.error(context),
                );
              },
            );
          }
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (weatherLocations, error) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: colorTheme.primary,
                  leading: IconButton(
                    onPressed: Navigator.of(context).pop,
                    icon: Icon(
                      Icons.arrow_back,
                      color: colorTheme.secondary,
                    ),
                  ),
                ),
                body: WeatherDetailsContent(viewModel: weatherLocations),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: colorTheme.primary,
                  onPressed: () => _onAddButtonTap(context, weatherLocations.city),
                  child: Icon(
                    Icons.add,
                    color: colorTheme.secondary,
                  ),
                ),
              );
            },
            error: (errorMessage) => WeatherlyErrorContent(errorText: errorMessage),
            orElse: () => const WeatherlyLoader(),
          );
        },
      ),
    );
  }

  void _onAddButtonTap(
    BuildContext context,
    String city,
  ) {
    context.read<WeatherScreenBloc>().add(
          WeatherScreenEvent.saveLocation(
              name: city,
              coordinate: coordinate,
              onSuccess: () {
                inject<WeatherViewBloc>().add(const WeatherViewEvent.getSavedCities());
              }),
        );

    Navigator.of(context).pop();
  }
}
