class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "Donate", image: "assets/images/demo/donate.png"),
  Category(title: "Food Help", image: "assets/images/demo/food.png"),
  Category(title: "Resource", image: "assets/images/demo/resource.jfif"),
  Category(title: "NGO", image: "assets/images/demo/ngo.png"),
  Category(title: "Well-being", image: "assets/images/demo/health.jpg"),
];
