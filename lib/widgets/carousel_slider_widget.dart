import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/ext.dart';

final List<String> imageIndex = [
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
];

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

final List<Widget> items =
    imageIndex
        .map(
          (e) => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(e,fit: BoxFit.fill,),
          ),
        )
        .toList();

final CarouselSliderController _carouselController = CarouselSliderController();
int currentSlide = 0;

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: CarouselSlider(
            carouselController: _carouselController,
            items: items,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSlide = index;
                });
              },
            ),
          ),
        ),
        4.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              imageIndex
                  .asMap()
                  .entries
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(6),
                      child: GestureDetector(
                        onTap: () => _carouselController.animateToPage(e.key),
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: BoxDecoration(
                            color:
                                currentSlide == e.key
                                    ? AppColors.sliderColor
                                    : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.sliderBorder),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}
