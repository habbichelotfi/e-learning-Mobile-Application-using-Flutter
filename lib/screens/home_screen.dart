import 'package:flutter/material.dart';
import '../helpers/navigation_helper.dart';
import 'all_courses_screen.dart';
import 'course_playlist_screen.dart';
import 'filter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGreeting(),
              const SizedBox(height: 30),
              _buildSearchBar(),
              const SizedBox(height: 20),
              _buildOfferBanner(),
              const SizedBox(height: 35),
              _buildSectionHeader('Popular Courses', () => NavigationHelper.navigateTo(context, const AllCourses())),
              const SizedBox(height: 15),
              _buildPopularCoursesRow1(),
              const SizedBox(height: 15),
              _buildPopularCoursesRow2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGreeting() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello John!'),
        Text(
          'Find your course',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, size: 30, color: Colors.grey),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        _buildFilterButton(),
      ],
    );
  }

  Widget _buildFilterButton() {
    return InkWell(
      onTap: () => NavigationHelper.navigateTo(context, const Filter()),
      child: Container(
        width: 60,
        height: 55,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 85, 54),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Icon(Icons.filter_list, color: Colors.white, size: 33),
      ),
    );
  }

  Widget _buildOfferBanner() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 107, 140, 254),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Limited Time Offer',
                style: TextStyle(color: Colors.white54, fontSize: 15),
              ),
              const Text(
                '30% OFF',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'For all courses',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 85, 54),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Get offer Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: -20,
          right: 5,
          child: Image.asset(
            'assets/images/alarm-clock.png',
            width: 160,
            height: 160,
          ),
        )
      ],
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onSeeAll) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: onSeeAll,
          child: Text(
            'See All',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPopularCoursesRow1() {
    return Row(
      children: [
        Expanded(
          child: _buildCoursePreviewCard(
            title: 'UX/UI Design',
            imagePath: 'assets/images/ui_ux_design.png',
            duration: '5h 30 min',
            rating: '4.9 (522 reviews)',
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: _buildCoursePreviewCard(
            title: 'Web Development',
            imagePath: 'assets/images/web-development.png',
            duration: '5h 30 min',
            rating: '4.9 (522 reviews)',
          ),
        ),
      ],
    );
  }

  Widget _buildPopularCoursesRow2() {
    return Row(
      children: [
        Expanded(
          child: _buildCoursePreviewCard(
            title: 'Mobile Development',
            imagePath: 'assets/images/development.png',
            duration: '5h 30 min',
            rating: '4.9 (522 reviews)',
            onTap: () => NavigationHelper.navigateTo(context, const CoursePlaylist()),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: _buildCoursePreviewCard(
            title: 'Python From A to Z',
            imagePath: 'assets/images/python.png',
            duration: '5h 30 min',
            rating: '4.9 (522 reviews)',
          ),
        ),
      ],
    );
  }

  Widget _buildCoursePreviewCard({
    required String title,
    required String imagePath,
    required String duration,
    required String rating,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap ?? () => _launchLoader(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 120),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time, color: Colors.grey, size: 16),
                const SizedBox(width: 4),
                Text(duration, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 16),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    rating,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchLoader() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 20),
            Text("Wait for It.."),
          ],
        ),
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) Navigator.pop(context);
  }
}
