import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';
import '../utils/app_colors.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  final List<Course> _myCourses = [
    Course(
      title: 'UX/UI Design',
      subtitle: 'Complete Guide',
      lectures: '45 Lectures',
      students: '2.5K',
      rating: '4.8',
      price: 'Enrolled',
      imagePath: 'assets/images/ui_ux_design.png',
      color: Colors.blue,
      isFavorite: true,
    ),
    Course(
      title: 'Web Development',
      subtitle: 'Bootcamp 2024',
      lectures: '120 Lectures',
      students: '10K',
      rating: '4.9',
      price: 'Enrolled',
      imagePath: 'assets/images/web-development.png',
      color: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Courses',
          style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: _myCourses.isEmpty
          ? _buildEmptyState()
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: _myCourses.length,
              itemBuilder: (context, index) {
                return CourseCard(
                  course: _myCourses[index],
                  onFavoriteToggle: () {
                    setState(() {
                      _myCourses[index].isFavorite = !_myCourses[index].isFavorite;
                    });
                  },
                );
              },
            ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.book_outlined, size: 80, color: AppColors.textGrey.withOpacity(0.3)),
          const SizedBox(height: 16),
          const Text(
            'No courses yet',
            style: TextStyle(color: AppColors.textGrey, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
