import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const HomeSlider({
    super.key,
    required this.onChange,
    required this.currentSlide,
  });

  @override
  Widget build(BuildContext context) {
    List<String> simages = [
      "assets/images/demo/slider1.jpg",
      "assets/images/demo/slider2.png",
      "assets/images/demo/slider3.jpg",
      "assets/images/demo/slider4.jpg",
    ];

    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: onChange,
            itemCount: simages.length,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(simages[index]),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                simages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
