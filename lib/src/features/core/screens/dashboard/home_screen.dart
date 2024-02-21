import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ionicons/ionicons.dart';
import 'package:vyasa/src/constants/colors.dart';
import 'package:vyasa/src/features/core/models/post.dart';
import 'package:vyasa/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:vyasa/src/features/core/screens/dashboard/widgets/home_appbar.dart';
import 'package:vyasa/src/features/core/screens/dashboard/widgets/home_slider.dart';
import 'package:vyasa/src/features/core/screens/dashboard/widgets/post_card.dart';
import 'package:vyasa/src/features/core/screens/dashboard/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const SearchField(),
                const SizedBox(height: 20),
                HomeSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(height: 20),
                const Categories(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special For You",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("See all"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => PostCard(
                    post: posts[index],
                  ),
                  itemCount: posts.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
