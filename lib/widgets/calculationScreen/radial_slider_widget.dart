import 'package:flutter/material.dart';
import 'package:goal_based_investment/const/resource.dart';
import 'package:goal_based_investment/controller/amount_selection_controller.dart';
import 'package:goal_based_investment/widgets/calculationScreen/slider_currency_element_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../core/app_color_palater.dart';
import '../../model/currency_model.dart';

class RadialSlider extends StatefulWidget {
  const RadialSlider({super.key});

  @override
  State<RadialSlider> createState() => _RadialSliderState();
}

class _RadialSliderState extends State<RadialSlider> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CurrencyModel>(
        stream: amountSelectionController.getSelectedCurrency,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }

          return SfRadialGauge(axes: <RadialAxis>[
            RadialAxis(
                minimum: 0,
                maximum: 487891,
                startAngle: 270,
                endAngle: 270,
                showLabels: false,
                showTicks: false,
                radiusFactor: 0.6,
                axisLineStyle: const AxisLineStyle(
                    cornerStyle: CornerStyle.bothFlat,
                    color: AppColorPallete.sliderUnactiveColor,
                    thickness: 12),
                pointers: <GaugePointer>[
                  RangePointer(
                      value: snapshot.data!.currencyInInt.toDouble(),
                      cornerStyle: CornerStyle.bothFlat,
                      width: 12,
                      sizeUnit: GaugeSizeUnit.logicalPixel,
                      color: AppColorPallete.sliderActiveColor,
                      gradient: const SweepGradient(colors: <Color>[
                        AppColorPallete.sliderActiveColor,
                        AppColorPallete.sliderActiveColor
                      ], stops: <double>[
                        0.25,
                        0.75
                      ])),
                  MarkerPointer(
                      value: snapshot.data!.currencyInInt.toDouble(),
                      enableDragging: true,
                      onValueChanged: onVolumeChanged,
                      markerHeight: 30,
                      markerWidth: 30,
                      markerType: MarkerType.image,
                      imageUrl: R.ASSETS_IMAGE_SLIDER_THUMB_PNG,
                      color: const Color(0XFFFFAB40),
                      borderWidth: 2,
                      enableAnimation: true,
                      borderColor: Colors.white54)
                ],
                annotations: const <GaugeAnnotation>[
                  GaugeAnnotation(
                    angle: 90,
                    axisValue: 5,
                    positionFactor: 0.1,
                    widget: SliderCurrencyElementWidget(),
                  )
                ])
          ]);
        });
  }

  void onVolumeChanged(double? value) {
    amountSelectionController.updateCurrency(value!.toInt());
  }
}
