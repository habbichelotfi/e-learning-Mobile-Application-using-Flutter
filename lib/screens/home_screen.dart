import 'package:flutter/material.dart';
import '../helpers/navigation_helper.dart';
import '../utils/app_colors.dart';
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
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 32),
                _buildSearchBar(),
                const SizedBox(height: 24),
                _buildOfferBanner(),
                const SizedBox(height: 32),
                _buildSectionHeader('Popular Courses', () => NavigationHelper.navigateTo(context, const AllCourses())),
                const SizedBox(height: 16),
                _buildPopularCoursesGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello John!',
              style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Find your course',
              style: TextStyle(
                color: AppColors.textDark,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: AppColors.softShadow,
          ),
          child: const Icon(Icons.notifications_none_rounded, color: AppColors.textDark),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: AppColors.softShadow,
            ),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search_rounded, size: 28, color: AppColors.textGrey),
                hintText: "Search your course...",
                hintStyle: TextStyle(color: AppColors.textGrey, fontSize: 15),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 18),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        _buildFilterButton(),
      ],
    );
  }

  Widget _buildFilterButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => NavigationHelper.navigateTo(context, const Filter()),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.accentOrange,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.accentOrange.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(Icons.tune_rounded, color: AppColors.white, size: 28),
        ),
      ),
    );
  }

  Widget _buildOfferBanner() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryBlue, AppColors.primaryBlue.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryBlue.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Limited Time Offer',
                  style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                const Text(
                  '30% OFF',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'For all courses',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.accentOrange,
                    borderRadius: BorderRadius.circular(12),
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
            bottom: -10,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/images/alarm-clock.png',
                width: 140,
                height: 140,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onSeeAll) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textDark),
        ),
        TextButton(
          onPressed: onSeeAll,
          style: TextButton.styleFrom(foregroundColor: AppColors.primaryBlue),
          child: const Text(
            'See All',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _buildPopularCoursesGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 0.8,
      children: [
        _buildCoursePreviewCard(
          title: 'UX/UI Design',
          imagePath: 'assets/images/ui_ux_design.png',
          duration: '5h 30 min',
          rating: '4.9 (522)',
        ),
        _buildCoursePreviewCard(
          title: 'Web Development',
          imagePath: 'assets/images/web-development.png',
          duration: '5h 30 min',
          rating: '4.9 (522)',
        ),
        _buildCoursePreviewCard(
          title: 'Mobile Dev',
          imagePath: 'assets/images/development.png',
          duration: '5h 30 min',
          rating: '4.9 (522)',
          onTap: () => NavigationHelper.navigateTo(context, const CoursePlaylist()),
        ),
        _buildCoursePreviewCard(
          title: 'Python A-Z',
          imagePath: 'assets/images/python.png',
          duration: '5h 30 min',
          rating: '4.9 (522)',
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
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: AppColors.softShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(imagePath),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textDark),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.access_time_filled_rounded, color: AppColors.textGrey, size: 14),
                const SizedBox(width: 4),
                Text(duration, style: const TextStyle(color: AppColors.textGrey, fontSize: 11)),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star_rounded, color: Colors.orange, size: 14),
                const SizedBox(width: 4),
                Text(rating, style: const TextStyle(color: AppColors.textGrey, fontSize: 11)),
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
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: const Row(
          children: [
            CircularProgressIndicator(color: AppColors.primaryBlue),
            SizedBox(width: 20),
            Text("Wait for It..", style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) Navigator.pop(context);
  }
}
