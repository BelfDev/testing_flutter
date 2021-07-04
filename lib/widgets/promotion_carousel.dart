import 'package:flutter/material.dart';
import 'package:testing_flutter/widgets/page_indicator.dart';
import 'package:testing_flutter/widgets/promotion_slide.dart';

class PromotionCarousel extends StatefulWidget {
  const PromotionCarousel({
    required this.slides,
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0),
    this.pageController,
    Key? key,
  }) : super(key: key);

  final List<PromotionSlide> slides;

  /// Defaults to `EdgeInsets.symmetric(horizontal: 16.0)`.
  final EdgeInsetsGeometry? margin;

  /// An object that can be used to control the position to which this page
  /// view is scrolled.
  final PageController? pageController;

  @override
  _PromotionCarouselState createState() => _PromotionCarouselState();
}

class _PromotionCarouselState extends State<PromotionCarousel> {
  late final PageController _controller;
  late int _activeIndex;

  @override
  void initState() {
    super.initState();
    _activeIndex = 0;
    _controller =
        widget.pageController ?? PageController(initialPage: _activeIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: widget.margin,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          const Radius.circular(32.0),
        ),
      ),
      child: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            physics: ClampingScrollPhysics(),
            children: widget.slides,
            onPageChanged: (index) {
              setState(() {
                _activeIndex = index;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PageIndicator(
              count: widget.slides.length,
              activeIndex: _activeIndex,
            ),
          ),
        ],
      ),
    );
  }
}
