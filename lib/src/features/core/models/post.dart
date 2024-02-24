class Post {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookmarked;
  final String imageFileName;

  const Post({
    required this.id,
    required this.caption,
    required this.title,
    required this.likes,
    required this.time,
    required this.isBookmarked,
    required this.imageFileName,
  });
}

const List<Post> posts = [
  Post(
    id: 1,
    title: 'Impact Stories: Changing Lives One Volunteer at a Time',
    caption: 'Volunteer Stories',
    isBookmarked: false,
    likes: '3.1k',
    time: '1hr ago',
    imageFileName: 'assets/images/img/posts/small/small_post_1.jpg',
  ),
  Post(
    id: 0,
    title: 'Spotlight on Sustainability: Eco-Friendly Initiatives Making Waves',
    caption: 'Environmental Conservation',
    isBookmarked: false,
    likes: '1.2k',
    time: '2hr ago',
    imageFileName: 'assets/images/img/posts/small/small_post_2.jpg',
  ),
  Post(
    id: 2,
    title: 'Empowering Youth: The Role of Volunteerism in Shaping future Leaders',
    caption: 'Youth Empowerment',
    isBookmarked: true,
    likes: '2k',
    time: '41hr ago',
    imageFileName: 'assets/images/img/posts/small/small_post_3.jpg',
  ),
];
