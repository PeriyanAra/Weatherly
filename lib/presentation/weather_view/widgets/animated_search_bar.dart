import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherly/core/di/get_it_implementation.dart';
import 'package:weatherly/core/utils/debouncer.dart';
import 'package:weatherly/presentation/weather/weather_screen.dart';
import 'package:weatherly/presentation/weather_view/bloc/weather_view_bloc.dart';
import 'package:weatherly/presentation/theme/theme.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({
    super.key,
    required this.onChanged,
  });

  final Function(String)? onChanged;

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  final _debouncer = Debouncer(milliseconds: 500);
  final _searchStream = inject<WeatherViewBloc>().searchedPlacesStream;
  final _textController = TextEditingController();

  var _expanded = false;

  @override
  void dispose() {
    _debouncer.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBarTheme = SearchBarThemeExtension.of(context);
    final textTheme = WeatherlyTextThemeExtension.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: searchBarTheme.contentPadding,
      child: StreamBuilder(
          stream: _searchStream,
          builder: (context, snapshot) {
            final hideContent =
                !snapshot.hasData || snapshot.data.isEmpty || _textController.text.length < 3;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: searchBarTheme.circularRadius,
                      topRight: searchBarTheme.circularRadius,
                    ),
                    color: _textController.text.isNotEmpty || !hideContent
                        ? searchBarTheme.iconColor
                        : WeatherlyColorsPalette.transparent,
                  ),
                  child: AnimatedContainer(
                    duration: searchBarTheme.animationMinDuration,
                    width: _expanded ? screenWidth : searchBarTheme.width,
                    decoration: BoxDecoration(
                      borderRadius: _textController.text.isNotEmpty && !hideContent
                          ? BorderRadius.only(
                              topLeft: searchBarTheme.circularRadius,
                              topRight: searchBarTheme.circularRadius,
                              bottomLeft: _textController.text.isNotEmpty || !hideContent
                                  ? searchBarTheme.zeroRadius
                                  : searchBarTheme.circularRadius,
                              bottomRight: _textController.text.isNotEmpty || !hideContent
                                  ? searchBarTheme.zeroRadius
                                  : searchBarTheme.circularRadius,
                            )
                          : BorderRadius.all(searchBarTheme.circularRadius),
                      border: Border(
                        bottom: BorderSide(
                          color: _textController.text.isNotEmpty || !hideContent
                              ? searchBarTheme.borderColor
                              : searchBarTheme.borderColor,
                        ),
                      ),
                      color: searchBarTheme.searchBarColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: _expanded
                                ? TextField(
                                    controller: _textController,
                                    cursorColor: searchBarTheme.cursorColor,
                                    style: textTheme.headline3
                                        .copyWith(color: searchBarTheme.textColor),
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: textTheme.headline3
                                          .copyWith(color: searchBarTheme.textColor),
                                      border: InputBorder.none,
                                      contentPadding: searchBarTheme.searchContentPadding,
                                    ),
                                    onChanged: (value) => _onTextFieldChange(value),
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ),
                        AnimatedContainer(
                          duration: searchBarTheme.animationMinDuration,
                          child: IconButton(
                            onPressed: () => _onSearchIconTap(
                              onHide: () {
                                context.read<WeatherViewBloc>().add(
                                      const WeatherViewEvent.clearSearchedCities(),
                                    );
                              },
                            ),
                            icon: Icon(
                              _expanded ? Icons.close : Icons.search,
                              color: searchBarTheme.iconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: searchBarTheme.animationMinDuration,
                  height: _textController.text.isNotEmpty || !hideContent ? null : 0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: _textController.text.isNotEmpty || !hideContent
                          ? searchBarTheme.circularRadius
                          : searchBarTheme.zeroRadius,
                      bottomRight: _textController.text.isNotEmpty || !hideContent
                          ? searchBarTheme.circularRadius
                          : searchBarTheme.zeroRadius,
                    ),
                    color: searchBarTheme.searchBarColor,
                  ),
                  child: (!snapshot.hasData ||
                          snapshot.data.isEmpty ||
                          _textController.text.length < 3 ||
                          _textController.text.isEmpty)
                      ? const SizedBox.shrink()
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _onSearchIconTap(
                                  onHide: () {
                                    context.read<WeatherViewBloc>().add(
                                          const WeatherViewEvent.clearSearchedCities(),
                                        );
                                  },
                                  hideWithoutAnimation: true,
                                );
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      WeatherScreen(coordinate: snapshot.data[index].coordinates),
                                ));
                              },
                              child: Padding(
                                padding: searchBarTheme.searchBarContentPadding,
                                child: Text(
                                  snapshot.data[index].city,
                                  style:
                                      textTheme.headline3.copyWith(color: searchBarTheme.textColor),
                                ),
                              ),
                            );
                          },
                        ),
                )
              ],
            );
          }),
    );
  }

  void _onTextFieldChange(String value) {
    setState(() {});
    _debouncer.run(
      () {
        if (_textController.text.length >= 3) {
          setState(() {
            widget.onChanged?.call(value);
            _textController.text = value;
          });
        }
      },
    );
  }

  void _onSearchIconTap({
    bool hideWithoutAnimation = false,
    required VoidCallback onHide,
  }) {
    final searchBarTheme = SearchBarThemeExtension.of(context);

    if (_expanded) {
      setState(() {
        _textController.text = '';
      });
      onHide();
      if (hideWithoutAnimation) {
        setState(() {
          _expanded = false;
        });
      } else {
        Future.delayed(searchBarTheme.animationMinDuration, () {
          setState(() {
            _expanded = false;
          });
        });
      }
    } else {
      setState(() {
        _expanded = true;
      });
    }
  }
}
