import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/widgets/product_card.dart';

import '../mock_image_http.dart';

void main() {
  group('ProductCard:', () {
    testWidgets('should render core components', (WidgetTester tester) async {
      HttpOverrides.runZoned(
        () async {
          final title = 'Norway';
          final formattedPrice = '\$300.00';

          final productCard = ProductCard(
            imageUrl: '',
            title: title,
            formattedPrice: formattedPrice,
          );
          // Renders the widget (triggers a frame and flushes microtasks)
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: productCard,
              ),
            ),
          );
          // Repeatedly calls pump with the given duration until there are no longer any frames scheduled.
          // This essentially waits for all animations to have completed.
          await tester.pumpAndSettle();

          final cardFinder = find.byType(Card);
          final containerFinder = find.byType(Container);
          final paddingFinder = find.byType(Padding);
          final columnFinder = find.byType(Column);
          final textFinder = find.byType(Text);
          final sizedBoxFinder = find.byType(SizedBox);

          final titleFinder = find.text(title);
          final priceFinder = find.text(formattedPrice);

          expect(cardFinder, findsOneWidget);
          expect(containerFinder, findsNWidgets(2));
          expect(paddingFinder, findsNWidgets(2));
          expect(columnFinder, findsOneWidget);
          expect(textFinder, findsNWidgets(2));
          expect(sizedBoxFinder, findsOneWidget);

          expect(titleFinder, findsOneWidget);
          expect(priceFinder, findsOneWidget);

          expect(
            tester.widget(cardFinder),
            isA<Card>().having(
              (w) => w.shape,
              'shape',
              equals(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      32.0,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        createHttpClient: createMockImageHttpClient,
      );
    });
  });
}
