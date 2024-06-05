import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/presentation/common/common.dart';
import 'package:weatherly/presentation/theme/theme.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';
import 'package:weatherly/presentation/weather_view/widgets/animated_search_bar.dart';
import 'package:weatherly/presentation/weather_view/widgets/weather_details_content.dart';
import 'package:weatherly/presentation/weather_view/widgets/weatherly_bottom_bar.dart';

class WeatherViewContent extends StatefulWidget {
  const WeatherViewContent({super.key});

  @override
  State<WeatherViewContent> createState() => _WeatherViewContentState();
}

class _WeatherViewContentState extends State<WeatherViewContent> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = WeatherlyTextThemeExtension.of(context);

    return BlocConsumer<WeatherViewBloc, WeatherViewState>(
      listener: (BuildContext context, WeatherViewState state) {
        if (state is WeatherViewLoadedState &&
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
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                state.maybeWhen(
                  loaded: (locations, error) {
                    if (locations.isEmpty) {
                      return Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Center(
                          child: Text(
                            'No weather info yet.',
                            style: textTheme.bodyText1,
                          ),
                        ),
                      );
                    }

                    return PageView.builder(
                      itemCount: locations.length,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return WeatherDetailsContent(viewModel: locations[index]);
                      },
                    );
                  },
                  error: (errorMessage) => WeatherlyErrorContent(errorText: errorMessage),
                  orElse: () => const WeatherlyLoader(),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: AnimatedSearchBar(
                    onChanged: (text) {
                      context
                          .read<WeatherViewBloc>()
                          .add(WeatherViewEvent.searchCity(cityName: text));
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: WeatherlyBottomBar(
            controller: _pageController,
            itemCount: state.maybeWhen(
              loaded: (locations, error) => locations.length,
              orElse: () => 0,
            ),
          ),
        );
      },
    );
  }
}
