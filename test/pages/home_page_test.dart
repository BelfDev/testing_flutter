import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:testing_flutter/pages/home_page.dart';

import '../mock_image_http.dart';

void main() {
  group('HomePage:', () {
    testGoldens(
      'page should look consistent with original design',
      (tester) async {
        Widget setupPage({
          // demo
          String? state,
        }) {
          return MaterialApp(
            home: Scaffold(
              body: HomePage(),
            ),
          );
        }

        final builder = DeviceBuilder()
          ..overrideDevicesForAllScenarios(
            devices: [
              Device.iphone11,
            ],
          )
          ..addScenario(
            name: 'home_state_empty',
            widget: setupPage(
              state: 'State.empty',
            ),
          )
          ..addScenario(
            name: 'home_state_content',
            widget: setupPage(
              state: 'State.data',
            ),
          );

        await tester.pumpDeviceBuilder(builder);
        await screenMatchesGolden(tester, 'home_page_flow');
      },
    );
  });
}
