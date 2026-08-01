import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';
import '../utils/app_colors.dart';
import '../widgets/custom_back_button.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  final List<Course> _courses = [
    Course(
      title: 'UX Fundamentals',
      subtitle: 'in 50 mins',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/clock.png',
      color: Colors.orange,
      isFavorite: false,
    ),
    Course(
      title: 'UX&UI Thinking',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/thinking.png',
      color: Colors.blue,
      isFavorite: true,
    ),
    Course(
      title: 'UX Research',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/ux_research.png',
      color: Colors.green,
      isFavorite: false,
    ),
    Course(
      title: 'UI Design',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/ui-design.png',
      color: Colors.grey,
      isFavorite: false,
    ),
    Course(
      title: 'Web Development',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/coding.png',
      color: Colors.blue,
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: CustomBackButton(),
        ),
        title: const Text(
          'Course List',
          style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: _courses.length,
        itemBuilder: (context, index) {
          final course = _courses[index];
          return CourseCard(
            course: course,
            onFavoriteToggle: () => _toggleFavorite(index),
          );
        },
      ),
    );
  }

  void _toggleFavorite(int index) {
    setState(() {
      _courses[index].isFavorite = !_courses[index].isFavorite;
    });

    final message = _courses[index].isFavorite
        ? '${_courses[index].title} added to favorites'
        : '${_courses[index].title} removed from favorites';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.textDark,
      ),
    );
  }
}
