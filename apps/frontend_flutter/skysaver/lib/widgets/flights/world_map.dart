import 'package:flutter/material.dart';

///Core theme import
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class WorldMap extends StatefulWidget {
  const WorldMap({super.key});

  @override
  State<WorldMap> createState() => _WorldMapState();
}

class _WorldMapState extends State<WorldMap> {
  final List<_InternetPrice> _internetPriceForShapes = <_InternetPrice>[
    const _InternetPrice('United States of America', visited: 1),
    const _InternetPrice('Albania', visited: 1),
    const _InternetPrice('United Arab Emirates', visited: 1),
    const _InternetPrice('United Arab Emirates', visited: 1),
    const _InternetPrice('Belgium', visited: 1),
    const _InternetPrice('Brazil', visited: 1),
    const _InternetPrice('Canada', visited: 1),
  ];

  final List<MapColorMapper> _shapeColorMappers = <MapColorMapper>[
    const MapColorMapper(
        from: 0.99,
        to: 2,
        color: Color.fromRGBO(3, 192, 150, 0.6),
        text: r'Visited'),
  ];

  @override
  Widget build(BuildContext context) {
    return _buildMapsWidget(false);
  }

  Widget _buildMapsWidget(bool scrollEnabled) {
    return Padding(
        padding: scrollEnabled
            ? EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                right: 10,
                left: 5)
            : const EdgeInsets.only(left: 5, right: 10),
        child: SfMapsTheme(
          data: SfMapsThemeData(
            brightness: Theme.of(context).colorScheme.brightness,
            shapeHoverColor: const Color.fromRGBO(204, 204, 204, 0.8),
            shapeHoverStrokeColor: const Color.fromRGBO(158, 158, 158, 1),
            bubbleHoverColor: const Color.fromRGBO(204, 204, 204, 0.8),
            bubbleHoverStrokeColor: Colors.transparent,
            toggledItemColor: Colors.transparent,
            toggledItemStrokeColor: null,
          ),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 30,
              ),
              child: Align(
                child: Text('Visited countries',
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ),
            Expanded(
                child: SfMaps(
              layers: <MapShapeLayer>[
                MapShapeLayer(
                  loadingBuilder: (BuildContext context) {
                    return const SizedBox(
                      height: 25,
                      width: 25,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                      ),
                    );
                  },

                  /// Changing the data based on whether data will be
                  /// visualized using the shape colors or bubbles.
                  source: MapShapeSource.asset(
                    'assets/maps/world_map.json',
                    shapeDataField: 'name',
                    dataCount: _internetPriceForShapes.length,
                    primaryValueMapper: (int index) =>
                        _internetPriceForShapes[index].actualCountryName,
                    shapeColorValueMapper: (int index) =>
                        _internetPriceForShapes[index].visited,
                    shapeColorMappers: _shapeColorMappers,
                  ),
                  // Returns the custom tooltip for each shape.
                  shapeTooltipBuilder: (BuildContext context, int index) {
                    if (_internetPriceForShapes[index].visited == null) {
                      return const SizedBox();
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Country : ${_internetPriceForShapes[index].countryName ?? _internetPriceForShapes[index].actualCountryName}\n',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                      ),
                    );
                  },
                  // Returns the custom tooltip for each bubble.
                  color: null,
                  strokeColor: const Color.fromRGBO(255, 255, 255, 1),
                  tooltipSettings: const MapTooltipSettings(
                    color: Color.fromRGBO(45, 45, 45, 1),
                  ),
                ),
              ],
            )),
          ]),
        ));
  }
}

class _InternetPrice {
  const _InternetPrice(
    this.actualCountryName, {
    this.visited,
    this.countryName,
  });

  final String actualCountryName;
  final double? visited;
  final String? countryName;
}
